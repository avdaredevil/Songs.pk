# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gRiB7Cn0KCmZ1bmN0aW9uIEIgewp9CgpmdW5jdGlvbiBJIHsKfQoKZnVuY3Rpb24gVCB7Cn0KCmZ1bmN0aW9uIEUgewp9CgpmdW5jdGlvbiBQIHsKfQoKZnVuY3Rpb24gQSB7Cn0KCmZ1bmN0aW9uIEwgewp9CgpmdW5jdGlvbiBXIHsKfQoKZnVuY3Rpb24gSCB7Cn0KCmZ1bmN0aW9uIFMgewp9CgpmdW5jdGlvbiBEIHsKfQoKZnVuY3Rpb24gRyB7Cn0KCmZ1bmN0aW9uIFIgewp9CgpmdW5jdGlvbiBDIHsKfQoKZnVuY3Rpb24gMiB7Cn0KCmZ1bmN0aW9uIDEgewp9CgpmdW5jdGlvbiAwIHsKfQo=")))
# ========================================END=OF=COMPILER===========================================================|
<#
|==============================================================================>|
   Songs.Pk Utility by APoorv Verma [AP] on 3/2/2014
|==============================================================================>|
      $) Downloads Songs Safely from songs.pk
      $) Lists new Movies & Singles from Website
      $) Adjusts URL's According to Download Frequency
      $) Learns new URL's and Removes Unused ones [time buffering!]
      $) Formats songs downloaded from Songs.pk
      $) Extremely Verbose Output
      $) Smart Algorithm to calculate movie names rather than guessing them
      $) Moderate AI With learning and inferencing capabilities
      $) Rule based Content Scraping to find out corrections
      $) Self-Code Mutation system, making the program portable
      $) Dynamic Loading Progression Bar to show load progress
      $) Dynamic Rule Based URL schemas added for older website processing
      $) Can use HideMyAss[proxy site] to work around blacklisting
      $) Honeypot Dummy File detection system [File size verification]
      $) Help Menu Added [With Color Coded Hierarchial Structure]
|==============================================================================>|
#>
[CmdletBinding()]
param(
    [Parameter(ValueFromPipeline=$true)]$Movie,
    [ValidateScript({$_ -ge 2000 -and $_ -lt $((Get-Date).Year+2)})][int]$Year = (Get-Date).Year,
    [ValidatePattern("\w{1,}")][String]$Folder = "~\Desktop\Mus",
    [validateSet("Download","Format","DownloadOnly")][String]$Mode = "Download",
    [Alias("128Kbps")][Switch]$Kbps128,
    [Alias("l","List")][Switch]$ListMode,
    [Alias("s","Stats")][Switch]$Status,
    [Switch]$OverWrite,
    [Switch]$Metadata,
    [Switch]$UseProxy,
    [Switch]$Singles,
    [Switch]$PlainText,
    [Switch]$TrackPlayer,
    [Switch]$Help,
    [Alias("DontLearn","NoCrawl")][Switch]$NoPersist
)
#================================================|
Begin {
if ($Help) {
    Write-AP "x*Help for [";Write-Host -NoNewLine -f Yellow "Songs-PK tool by APoorv Verma";Write-host -f 3 "]:"
    Write-Host ""
    Write-AP ">!Parameters:"
    Write-AP ">>*Movie     - List the movie to download"
    Write-AP ">>*Year      - The Seed Year to look in for the given movie"
    Write-AP ">>*Folder    - Where to place the formatted songs after download"
    Write-AP ">>*Mode      - Can be [Download, DownloadOnly, Format]"
    Write-Host ""
    Write-AP ">!Other Modes (Flags):"
    Write-AP ">>*ListMode    - Lists all the new Movies on Songs.Pk Website"
    Write-AP ">>*TrackPlayer - Opens Windows Media Player with all your downloaded songs, every song deleted from its .."
    Write-AP ">>>>>>*..playlist get removed from the folder as well" -n
    Write-Host ""
    Write-AP ">!Flags:"
    Write-AP ">>*Kbps128   - Downloads in 128Kbps Quality [Default is 320Kbps]"
    Write-AP ">>*Status    - Shows the internal DB of the different Hit Rates per URL"
    Write-AP ">>*OverWrite - Enables Overwrite Mode for download and formatting"
    Write-AP ">>*UseProxy  - Uses HideMyAss Proxy Randomizing agent to access Songs.Pk"
    Write-AP ">>*Singles   - Used with <-l> Lists all the New Singles on the website"
    Write-AP ">>*PlainText - Used with <-S> Lists all the New Singles on the website [Plaintext]"
    Write-AP ">>*NoPersist - Prevents a failed download to go into persist mode"
    Write-Host ""
;Exit}
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if (!${Function:AP-Require}) {Write-Host -f red "[-] Please Compile with AP-Engine.";exit}
AP-Require "Internet" {Write-AP "!Need Internet To Function!";exit}
AP-Require "function:V-Stacker" {if ($Singles) {Write-AP "!Missing AP-Function [V-Stacker] switched to plain-text mode."};$PlainText = 1}
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
$DummyFileSize  = 9MB
$IndepURLThresh = 15 #Size a URL Entry in the DB has to be to not be considered a suffix
}
Process {$Mov += ,$Movie}
END {
    $AxelThreads  = 32
    $PersistYears = 12
    $Movie = $Mov
    $Path2Dwnld = "~\Desktop"
    $HT = @{
        UserAgent   = 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 4.1; WOW64; Trident/6.0)'
        ContentType = 'application/x-www-form-urlencoded'
        Method      = 'Get'
    }
    #------------------|
    if ($Mode -like "Download*" -and !$Movie -and !$ListMode -and !$Status) {Write-AP "*Switching to Format Mode";$Mode = "Format"}
    if ($Mode -eq "Format" -and $Movie) {Write-AP "*Switching to Movie Songs Download";$Mode = "Download"}
    if ($Mode -eq "Format" -and !(Test-Path -type Container $Folder)) {Write-AP "-The Folder Supplied Does not exist";exit} else {$Folder = Resolve-Path $Folder -ea SilentlyContinue}
    "axel","7z" | % {if (!$(try {& $_} catch {})) {Write-AP "-$_ Is not in path. Please add them!";exit}}
    #------------------|
    function List-New-Songs ([Switch]$Singles) {
        Try {
            $IE = Invoke-WebRequest (Proxy-Conv "http://www.songs.pk") @HT
            #$Table = ($IE.Document.getElementById('table195').rows | % {$_.outertext.replace('Movie Songs','').replace('Singles','').trim()})[2..1000]
            $Table = "songs-list1$(if ($Singles) {'1'})( ?)+$"
            $IE.ParsedHtml.getElementsByTagName("ul") | ? {$_.classname -match $Table} | % {
                if ($Singles) {
                    if ($PlainText) {$lb = "[";$rb = "]"}
                    @($_.childNodes)[1..100] | % {"{0}`t$lb{1}$rb" -f @($_.childNodes)[1,2].InnerText.trimStart()}
                } else {$_.innertext -replace "( ?)+Movie Songs|(^.+Category )","|" -split "\|" | % {$_ -replace "(?! )[\s]"}}
            } | ? {$_}
        } Catch {Write-AP "-Could not fetch songs [$_]";return}
    }
    function Proxy-Conv ([Parameter(Mandatory=$True)][String]$URL) {
        if (!$UseProxy) {return $URL}
        $URL = [Uri]::EscapeUriString((Convert-ToBase64 ([Uri]::EscapeUriString($URL.TrimStart("htps")))))
        return "http://$(Get-Random (1..7)).hidemyass.com/ip-$(Get-Random (1..9))/encoded/$URL&f=norefer"
    }
    function Update-URLs ([Parameter(Mandatory=$True)][Hashtable]$URL) {
        $Thresh = 200;$SUM = 0
        $Enum  = $URL.GetEnumerator() | % {$_.Key}
        $EnumV = $URL.GetEnumerator() | % {[Int]$_.Value}
        $EnumV | % {$SUM += $_};if ($Sum -gt $Thresh) {
            $Enum | % {$URL."$_" /= 10;if ($URL."$_" -lt .75) {$URL.remove("$_");Write-AP ">*URL [$_] is not used often, deleting!"}}
            $Sum = 0;$URL.GetEnumerator() | % {$Sum += [Int]$_.Value}
        }
        if ($Sum -lt 2) {$Sum=2}
        $Data = $URL.GetEnumerator() | % {($_.Name -replace "^www.SongsPK320")+":"+$_.Value}
        $Data = ("$('<')#@$('='*[Math]::Floor($SUM/2))|",$Data,"|$('='*[Math]::Ceiling($SUM/2))@#$('>')" | % {$_ -join ";"}) -join ("")
        $FileData = [IO.File]::ReadAllLines($PSCommandPath)
        if (($FileData | Out-String) -match "<\#@=+\|.*\|=+@#\>") {
            <#@====================================|.net:27;.eu:2;.us:10;.co:0;net.us:0;.in:3;z.eu:3;z.us:23;co.us:4;.com:1|=====================================@#>
            $FileData = (($FileData | Out-String) -replace [Regex]::Escape($Matches[0]),$Data).split("`n") | ? {$_ -match "..+"}
            $FileData = $FileData -join "`n"
        } else {
            $FileData += $Data
        }
        $FileData | Out-File -encoding default $PSCommandPath
    }
    function Get-URLs {
        $Thresh = 200
        $Hash = @{}
        if ([IO.File]::ReadAllLines($PSCommandPath) -join("") -match "<\#@(=?)+\|(?<DB>.+)\|(=?)+@#\>") {
            $Matches.DB.split(";").trim() | % {
                $a = $_.split(":")
                $Key = $(if ($a[0].Length -ge $IndepURLThresh) {$a[0]} else {"www.SongsPK320$($a[0])"})
                $Hash += @{$Key=[int]$(try {if ([int]$a[1] -gt $Thresh) {$a[1]%$Thresh+$Thresh} else {$a[1]}} catch {$Thresh/4})}
            }
            $Script:UpdateURL++
        } else {
            $urs = ".com","net.us",".co",".net",".us",".in",".eu","z.eu","z.us"
            $Script:UpdateURL+=$urs.count
            $urs | % {$Hash += @{"www.SongsPK320$_" = [int]0}}
        }
        return $Hash
    }
    function Download-ZIP {
        param (
            [Parameter(Mandatory=$True)][String]$Movie,
            [ValidateScript({$_ -ge 2000 -and $_ -lt $((Get-Date).Year+2)})][int]$Year = (Get-Date).Year,
            [Alias("128Kbps")][Switch]$Kbps128
        )
        $Movie = $Movie.trim()
        #------------
        if ($SCRIPT:DwdTry -eq 0) {Write-AP ">!Persistent Download Tries Exhausted";return}
        $SCRIPT:DwdTry--
        #------------
        if ($Script:DWdTry -eq 1) {Write-AP "*Downloading Movie [$($Movie.replace("-"," "))]"}
        $Movie = $Movie.replace(" ","-") -replace "-{2,}","-"
        $URLSkeleton = $("http://<URL>/")+$(if ($Kbps128) {"128/"})+$("indian/<MovPattern>(Songs.PK).zip")
        $URLCNT = 0
        foreach ($U in ($URL.GetEnumerator() | sort value -Descending).Name) {
            $MovPattern = $Movie,$Year,$(if ($Kbps128) {"128Kbps"} else {"320Kbps"})
            $URLCNT++;$CipherErrorCurr = -1
            Write-AP ">*Using URL-$URLCNT"
            foreach ($seq in (0,1,2),(0,2),(0,2,1)) {
                $FL = $MovPattern[$Seq] -join "-"
                if (test-path -type leaf "$FL(Songs.PK).zip") {[Console]::CursorTop--;Clear-Line;Write-AP "!Using existing File";Return "$FL(Songs.PK).zip"}
                $axel = axel -n $AxelThreads -v -a (Proxy-Conv $URLSkeleton.replace("<URL>",$U).replace("<MovPattern>",$FL)) | Loading-Message "        Downloading" -CPB 200 | ? {$_ -notmatch "\[ {1,}\d"}
                if ($CipherErrorCurr -ne $URLCNT -and $Axel -match "Unable to connect to server") {Write-AP ">>!Blocked by server x( Use -UseProxy Parameter to bypass";$CipherErrorCurr = $URLCNT}
                if (test-path -type leaf "$FL(Songs.PK).zip") {
                    $Axel = Get-Axel-Download-Data $Axel
                    if ("$(Size-Adj $Axel.Size)".replace(" ","").replace("NaN","0")/1MB -lt $DummyFileSize/1MB) {Write-AP ">>!Dummy File Recieved #LOL";$Axel = ""}
                    if (!$Axel -or "$(Size-Adj $Axel.Size)" -match "NaN") {del "$FL(Songs.PK).zip" -EA SilentlyContinue;Continue}
                    $Script:UpdateURL++
                    $URL.$U++
                    write-AP "+Downloaded Movie Songs in $(Time-Adj $Axel.DownloadTime) [Size: $(Size-Adj $Axel.Size) @ $($Axel.DownloadSpeed)]"
                    Return $Axel.File
                }
            }
        }
        if (!$NoPersist) {
            Write-AP ">*Persiting Download"
            foreach ($p in ($Year+1)..($Year-[Math]::Abs($PersistYears))) {
                foreach ($Symbol in "-","_") {
                    foreach ($Schema in "www.songs.pk/indian-mp3-songs","www.songspk.name/indian") {
                        try {
                            $Crawler = iwr "http://$Schema/$(("$Movie-$p-mp3-songs").replace('-',$Symbol)).html".toLower() @HT
                            if ($Crawler.RawContent -match "http://images.songspk.name/logos/comingsoon.jpg") {$Crawler = "";continue}
                            if ("$p" -ne "$Year") {Write-AP ">!Maybe Invalid Year was typed! Trying with $p";return Download-ZIP $Movie $p -Kbps128:$Kbps128} else {break}
                        } catch {if ("$_" -notmatch "404") {Write-AP "!Error in Crawl attempt [$_]"}}
                        if ($Crawler) {break}
                    }
                }
            }
            if (!$Crawler) {Write-AP ">!Could not find appropriate URL to persist Movie [$($Movie.replace("-"," "))]";return}
            Write-AP ">*Scraping Data to find Correct Download URL :)"
            $Page = $Crawler.ParsedHtml.getElementsByTagName("div")
            $Link = (0..($Page.length-1) | ? {$Page.item($_).outertext -match "All In One \[Zip Links\]"})[-1]
            [int]$Link += ?:($Kbps128){1}{3}
            if ($Link | % {$Page.item($_).innerHTML -match 'href="(.*zip)'}) {
                $U  = $Matches[1].split("/")[2]
                Write-AP ">+Directed URL Download from [$U]"
                $FL = (Split-Path -leaf $Matches[1])
                $Axel = Get-Axel-Download-Data (Axel -n $AxelThreads -v -a (Proxy-Conv $Matches[1]) | Loading-Message "        Downloading" -CPB 200 | ? {$_ -notmatch "\[ {1,}\d"})
                if (test-path -type leaf $FL) {$Script:UpdateURL++;$URL.$U++;write-AP "+Downloaded Movie Songs in $(Time-Adj $Axel.DownloadTime) [Size: $(Size-Adj $Axel.Size) @ $($Axel.DownloadSpeed)]";Return $FL}
            } else {Write-AP ">!Could not Scrape URL :("}
        }
        Write-AP "-Could Not Download Songs for Movie [$($Movie.replace('-'," "))]"
    }
    function Format-Songs {
        pushd $Folder
        $Files = (Get-ChildItem -Filter "`[Songs.pk`]*").Name
        if (!$Files) {Write-AP "!All songs seem formatted";popd;Return}
        $Keywords = @{}
        Write-AP "*Calcuating Movies Names"
        $Files | % {
            $Data = ($_ -replace "^\[\S+\] ?").replace(".mp3","") -replace " {2,}"," " -replace(" ?- ?","|")
            $Data = "|$($Data.Trim())|"
            0..9   | % {$Data = $Data.replace("|0$_|","|")}
            10..50 | % {$Data = $Data.replace("|$_|","|")}
            $Data.trim(" ","|").split("|") | % {$Keywords.$_++}
        }
        $Movies = @();$KeyWords.GetEnumerator() | ? {$_.Value -gt 3} | % {$Movies += ,$_.Key}
        if ($Movies.count -gt 0) {
            Write-AP "+Found $($Movies.Count) Movie$(if ($Movies.Count -gt 1) {'s'})!"
        } else {
            Write-AP "*All Songs are in Fomat 3 [No Movie in Name]!"
        }
        $Files | % {
            $Data = ($_ -replace "^\[\S+\] ?").replace(".mp3","") -replace " {2,}"," " -replace(" ?- ?","-")
            $Data = "-$($Data.Trim())-"
            0..9   | % {$Data = $Data.replace("-0$_-","")}
            10..50 | % {$Data = $Data.replace("-$_-","")}
            $Data = $Data.replace("--","-")
            $Movies | % {$Data = $Data -replace("$_-$_","::::") -replace "$_" -replace("::::","$_")}
            $Data = "$($Data.trim(" ",'-').replace('-',' - ')).mp3"
            if (Test-Path -type Leaf $Data) {if ($OverWrite) {Write-AP ">+Overwriting [$Data]";del $Data} else {Write-AP ">!File [$Data] exists, Skipping"}} else {
                Write-AP ">+Formatting [$Data]"
            }
            if (!(Test-Path -type Leaf $Data)) {cmd /c ren $_ $Data}
        }
        $Pics = Get-ChildItem -File | ? {$_ -match "\.(jpe?g|png)$"}
        if ($Pics) {
            Write-AP "*Moving $($Pics.Count) Movie Picture$(if ($Pics.Count -gt 1) {'s'}) to [Movie-Pictures] Folder"
            if (!(Test-Path -type Container "Movie-Pictures")) {md Movie-Pictures}
            $Pics | % {if (Test-Path "Movie-Pictures\$_") {del "Movie-Pictures\$_"};mv $_ Movie-Pictures}
        }
        popd
    }
    function Handle-PlayerTracker([PSCustomObject]$Player,[Switch]$Init) {
        if ($Init) {$Player.wmp.OpenPlayer($Player.wmp.currentPlaylist.Item(0).sourceURL)}
    }
    function Create-PlayerTracker($wmp,[String]$Folder) {
        $SrcList = ls $Folder\*.mp3;$PlayList=$wmp.NewPlaylist("Songs.Pk Music Tracker","Let me know what music you like!")
        if (!$SrcList.count) {Write-AP "!Folder is Empty, No Songs to Track."}
        $SrcList.FullName | % {$PlayList.appendItem($wmp.newMedia($_))}
        Write-AP ">+Created playlist [$($PlayList.Count) Song$(if ($PlayList.Count-1) {'s'})]"
        $wmp.currentPlaylist = $PlayList
        return [PSCustomObject]@{wmp = $wmp;folder = $folder}
    }
    #------------------|
    if ($ListMode) {$Data = List-New-Songs -Singles:$Singles;if ($PlainText -or !$Singles) {$Data} else {V-Stacker ("Song   Artist/Movie",$Data.replace("`t","    "))};exit}
    $SCRIPT:URL = Get-URLs
    if ($Status) {$URL.GetEnumerator() | sort value -Descending;popd;exit}
    pushd $Path2Dwnld
    $CMR = $URL
    if ($Mode -ne "Format") {
        foreach ($Mov in $Movie) {
            $SCRIPT:DwdTry = 2
            $File = Download-ZIP $Mov $Year -Kbps128:$Kbps128
            if (!$File) {Continue}
            if ($Mode -eq "DownloadOnly") {continue}
            Write-AP "*Extracting songs to [$(Split-Path $Folder -leaf)]"
            $Stat = 7z -y e $File -o"$Folder" | Loading-Message "    Extracting" -CPB 1
            if (!$?) {Write-AP "-Could Not Extract Files from [$File], Assuming its corrupt";del $File;continue}
            del $File
        }
        $Mode = "Format"
    }
    if (!($TrackPlayer -and !$Movie) -and $Mode -eq "Format") {
        Write-AP "*Formatting Data in $(if (!$Movie) {"[$(Split-Path $Folder -leaf)]"} else {'Folder'})"
        Format-Songs $_
    } elseif ($TrackPlayer) {
        Write-AP "*Initializing Player Tracker v1.0"
        Add-Type -As PresentationCore;$wmp=New-Object -com WMPlayer.ocx.7
        $Player = Create-PlayerTracker $wmp $folder
        IN-CODE-DEBUG-CONSOLE
        Handle-PlayerTracker $Player -Init
    }
    if ($Script:UpdateURL) {Write-AP "*Updating URL Database [$UpdateURL URL]";Update-URLs $URL}
    popd
}
<# @AP-IMPORT DEFINITIONS:
    Exe: axel
    AP-Modules: true
    Alias: ?:
#>


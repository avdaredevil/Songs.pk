# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gVGltZS1BZGogewpwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW0RvdWJsZV0kTWlsbGlzZWNvbmRzLCAkSW5wdXRUeXBlID0gIk1pbGxpc2Vjb25kcyIsIFtTd2l0Y2hdJEZ1bGxGb3JtKQ0KDQogICAgaWYgKCRNaWxsaXNlY29uZHMgLWVxIDApIHtyZXR1cm4gIjAgJCg/OigkZnVsbEZvcm0peyJNaWxsaXNlY29uZHMifXsibXMifSkifQ0KICAgIGlmICgkSW5wdXRUeXBlIC1uZSAiIikgew0KICAgICAgICAkQ29udiA9IEB7Ik1pbGxpc2Vjb25kcyIgPSAxfQ0KICAgICAgICAkQ29udiArPSBAeyJTZWNvbmRzIiA9IDEwMDAqJENvbnYuTWlsbGlzZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJNaW51dGVzIiA9IDYwKiRDb252LlNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7IkhvdXJzIiA9IDYwKiRDb252Lk1pbnV0ZXN9DQogICAgICAgICRDb252ICs9IEB7IkRheXMiID0gMjQqJENvbnYuSG91cnN9DQogICAgICAgICRDb252ICs9IEB7IlllYXJzIiA9IDM2NS4yNSokQ29udi5EYXlzfQ0KICAgICAgICBpZiAoJENvbnYuQ29udGFpbnNLZXkoJElucHV0VHlwZSkpIHskTWlsbGlzZWNvbmRzICo9ICRDb252LiRJbnB1dFR5cGV9DQogICAgfQ0KICAgICRTaWduICA9ID86KCRNaWxsaXNlY29uZHMgLWx0IDApey0xfXsxfQ0KICAgICRNaWxsaXNlY29uZHMgKj0gJFNpZ24NCiAgICAkU3BhbiAgPSBOZXctVGltZVNwYW4gKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKSAkKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKS5BZGRNaWxsaXNlY29uZHMoJE1pbGxpc2Vjb25kcykNCiAgICAkUHJvcHMgPSAoJHNwYW4gfCBnbSB8ID8geyRfIC1tYXRjaCAiVG90YWwifSkubmFtZQ0KICAgICRTaXplcyA9ID86KCRGdWxsRm9ybSl7JFByb3BzIHwgJSB7JF8uc3Vic3RyaW5nKDUpfX17QCgiZGF5cyIsImhycyIsIm1zIiwibWluIiwic2VjIil9DQogICAgJFNpemVzID0gJFNpemVzWzAsMSwzLDQsMl0NCiAgICAkUHJvcHMgPSAkUHJvcHNbMCwxLDMsNCwyXQ0KICAgICREZWcgPSAtMQ0KICAgIGRvIHsNCiAgICAgICAgJERFRysrDQogICAgfSB3aGlsZSAoW1N5c3RlbS5NYXRoXTo6Um91bmQoJFNwYW4uKCRwcm9wc1skZGVnXSksMikgLWx0IDEpDQogICAgJGFucyA9ICRTcGFuLigkcHJvcHNbJGRlZ10pOyR1bml0ID0gJFNpemVzWyREZWddDQogICAgaWYgKCRERUcgLWVxIDAgLWFuZCAkU3Bhbi4oJHByb3BzWyRkZWddKSAtZ2UgMzY1LjI1KSB7JGFucyAvPSAzNjUuMjU7JHVuaXQ9PzooJEZ1bGxGb3JtKXsiWWVhcnMifXsieXIifX0NCiAgICAkUmV0dXJuYSA9ICIkKCRTaWduKltTeXN0ZW0uTWF0aF06OlJvdW5kKCRhbnMsMikpIiwiJHVuaXQiDQogICAgJFJldHVybmFbMV0gPSA/OigkUmV0dXJuYVswXSAtZXEgMSl7JFJldHVybmFbMV0udHJpbUVuZCgicyIpfXskUmV0dXJuYVsxXX0NCiAgICBpZiAoJFJldHVybmFbMV0gLWVxICJtIikgeyRSZXR1cm5hWzFdICs9ICJzIn0NCiAgICBSZXR1cm4gKCRSZXR1cm5hIC1qb2luKCIgIikpDQp9CgpmdW5jdGlvbiBDbGVhci1MaW5lIHsKDQogICAgJE5tID0gJEhvc3QuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aC0xDQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lICIkKCgiYGIiKiROTSkrKCIgIiokTk0pKygiYGIiKiROTSkpIg0KfQoKZnVuY3Rpb24gSW52b2tlLVRlcm5hcnkgewpwYXJhbShbYm9vbF0kZGVjaWRlciwgW3NjcmlwdGJsb2NrXSRpZnRydWUsIFtzY3JpcHRibG9ja10kaWZmYWxzZSkNCg0KICAgIGlmICgkZGVjaWRlcikgeyAmJGlmdHJ1ZX0gZWxzZSB7ICYkaWZmYWxzZSB9DQp9CgpmdW5jdGlvbiBDb252ZXJ0LVRvQmFzZTY0IHsKcGFyYW0oW1N0cmluZ10kVGV4dCwgW1ZhbGlkYXRlU2V0KCJVVEY4IiwiVW5pY29kZSIpXVtTdHJpbmddJEVuY29kaW5nID0gIlVURjgiKQ0KDQogICAgW1N5c3RlbS5Db252ZXJ0XTo6VG9CYXNlNjRTdHJpbmcoW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6JEVuY29kaW5nLkdldEJ5dGVzKCRUZXh0KSkNCn0KCmZ1bmN0aW9uIEcgewp9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHsKcGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJJbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJkZXA6KC4qKSIgIHt0cnkgeyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7IlN1Y2Nlc3MifSBjYXRjaCB7fX0NCiAgICAgICAgImZ1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQp9CgpmdW5jdGlvbiBHZXQtQXhlbC1Eb3dubG9hZC1EYXRhIHsKcGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSREYXRhKQ0KDQogICAgaWYgKCEkRGF0YSkge3JldHVybn0NCiAgICB0cnkgew0KICAgICAgICAkSGFzaCA9IEB7fQ0KICAgICAgICAkSGFzaC5VUkwgICA9ICgkRGF0YVswXS5zcGxpdCgiOiIpWzEuLjEwMDBdIC1qb2luKCI6IikpLnRyaW0oKQ0KICAgICAgICAkSGFzaC5TaXplID0gJERhdGFbMV0uc3BsaXQoIjoiKVsxXS50cmltKCkuc3BsaXQoIiAiKVswXQ0KICAgICAgICAkSGFzaC5GaWxlICA9ICREYXRhWzJdLnN1YnN0cmluZygxOSkudHJpbSgpDQogICAgICAgICRUUiA9ICREYXRhWy0xXS5zcGxpdCgiICIpDQogICAgICAgICRIYXNoLkRvd25sb2FkU3BlZWQgPSAiJCgkVFJbLTIsLTFdLnRyaW0oIigiLCIpIikpIg0KICAgICAgICAkREwgPSAkVFJbNF0uc3BsaXQoIjoiKSB8ICUge1tpbnRdJF99DQogICAgICAgIHN3aXRjaCAoJERMLmNvdW50KSB7DQogICAgICAgICAgICAzIHskSGFzaC5Eb3dubG9hZFRpbWUgPSAoJERMWzBdKjYwKyRETFsxXSkqNjArJERMWzJdfQ0KICAgICAgICAgICAgMiB7JEhhc2guRG93bmxvYWRUaW1lID0gJERMWzBdKjYwKyRETFsxXX0NCiAgICAgICAgICAgIGRlZmF1bHQgeyRIYXNoLkRvd25sb2FkVGltZSA9ICRETFswXX0NCiAgICAgICAgfQ0KICAgICAgICAkSGFzaC5Eb3dubG9hZFRpbWUgKj0gMTAwMA0KICAgIH0gY2F0Y2gge30NCiAgICByZXR1cm4gJEhhc2gNCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHsKcGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtTdHJpbmddJFRleHQsIFtTd2l0Y2hdJE5vU2lnbikNCg0KICAgIGlmICghJHRleHQgLW9yICR0ZXh0IC1tYXRjaCAiXltcK1wtXCFcKnhcPiBdKyQiKSB7cmV0dXJufQ0KICAgICRhY2MgID0gQCgoJysnLCcyJyksKCctJywnMTInKSwoJyEnLCcxNCcpLCgnKicsJzMnKSkNCiAgICAkdGIgICA9ICcnOyRmdW5jICAgPSAkZmFsc2UNCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICd4JykgeyRmdW5jID0gJHRydWU7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICB3aGlsZSAoJFRleHQuY2hhcnMoMCkgLWVxICc+JykgeyR0YiArPSAiICAgICI7ICRUZXh0ID0gJFRleHQuc3Vic3RyaW5nKDEpLnRyaW0oKX0NCiAgICAkU2lnbiA9ICRUZXh0LmNoYXJzKDApDQogICAgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpLnJlcGxhY2UoJy94XCcsJycpLnJlcGxhY2UoJ1suXScsJ1tDdXJyZW50IERpcmVjdG9yeV0nKQ0KICAgICR2ZXJzID0gJGZhbHNlDQogICAgZm9yZWFjaCAoJGFyIGluICRhY2MpIHtpZiAoJGFyWzBdIC1lcSAkc2lnbikgeyR2ZXJzID0gJHRydWU7ICRjbHIgPSAkYXJbMV07ICRTaWduID0gIlske1NpZ259XSAifX0NCiAgICBpZiAoISR2ZXJzKSB7VGhyb3cgIkluY29ycmVjdCBTaWduIFskU2lnbl0gUGFzc2VkISJ9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiRmdW5jIC1mICRjbHIgJHRiJChpZiAoISROb1NpZ24pIHskU2lnbn0pJFRleHQNCn0KCmZ1bmN0aW9uIFNpemUtQWRqIHsKcGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JHRydWUpXVtEb3VibGVdJEJ5dGVzLCBbU3dpdGNoXSRCeVRob3VzYW5kKQ0KDQogICAgJEJUID0gPzooJEJ5VGhvdXNhbmQpezEwMDB9ezEwMjR9DQogICAgJFNpemVzID0gQCgiIiwiSyIsIk0iLCJHIiwiVCIsIlAiLCJFIiwiWiIsIlkiKQ0KICAgICREZWcgPSBbU3lzdGVtLk1hdGhdOjpGbG9vcihbTWF0aF06OkxvZygkYnl0ZXMsJEJUKSkNCiAgICAkRGVnID0gPzooJERlZyAtZ2UgJFNpemVzLmNvdW50KXskU2l6ZXMuY291bnQtMX17JERlZ30NCiAgICAkUmV0ID0gInswfSIgLWYgW1N5c3RlbS5NYXRoXTo6Um91bmQoJEJ5dGVzLyhbTWF0aF06OlBvdygkQlQsJERlZykpLDIpDQogICAgaWYgKCRyZXQgLWVxICJOYU4iKSB7cmV0dXJuICRyZXR9DQogICAgUmV0dXJuICIkcmV0ICQoJFNpemVzWyREZWddKUIiDQp9CgpmdW5jdGlvbiAyIHsKfQoKZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kgewpwYXJhbShbQWxpYXMoIlRyYW5zcGFyZW5jeSIsIkludmlzaWJpbGl0eSIsImkiLCJ0IildW1ZhbGlkYXRlUmFuZ2UoMCwxMDApXVtpbnRdJFRyYW5zPTAsIFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kUHJvY2VzcykNCg0KICAgIGlmICgkUHJvY2VzcyAtbWF0Y2ggIlwuZXhlJCIpIHskUHJvY2VzcyA9ICRQcm9jZXNzLnJlcGxhY2UoIi5leGUiLCIiKX0NCiAgICBUcnkgew0KICAgICAgICBpZiAoJFByb2Nlc3MubmFtZSkgeyRQcm9jID0gJFByb2Nlc3MubmFtZX0gZWxzZSB7JFByb2MgPSAoR2V0LVByb2Nlc3MgJFByb2Nlc3MgLUVycm9yQWN0aW9uIFN0b3ApWzBdLm5hbWV9DQogICAgfSBjYXRjaCB7DQogICAgICAgIGlmIChbSW50XTo6VHJ5UGFyc2UoJFByb2Nlc3MsIFtyZWZdMykpIHskUHJvYyA9ICgoR2V0LVByb2Nlc3MgfCA/IHskXy5JRCAtZXEgJFByb2Nlc3N9KVswXSkubmFtZX0NCiAgICB9DQogICAgaWYgKCRQcm9jIC1ub3RNYXRjaCAiXC5leGUkIikgeyRQcm9jID0gIiRQcm9jLmV4ZSJ9DQogICAgbmlyY21kIHdpbiB0cmFucyBwcm9jZXNzICIkUHJvYyIgKCgxMDAtJFRyYW5zKSoyNTUvMTAwKSB8IE91dC1OdWxsDQp9CgpTZXQtQWxpYXMgaW52IFByb2Nlc3MtVHJhbnNwYXJlbmN5ClNldC1BbGlhcyA/OiBJbnZva2UtVGVybmFyeQ==")))
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
    if ($Mode -eq "Format" -and !(Test-Path -type Container $Folder)) {Write-AP "-The Folder Supplied Does not exist";exit} else {$Folder = Resolve-Path $Folder}
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
            <#@==================================|.net:25;.eu:2;.us:10;.co:0;net.us:0;.in:3;z.eu:3;z.us:20;co.us:4;.com:1|==================================@#>
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
    #------------------|
    if ($ListMode) {$Data = List-New-Songs -Singles:$Singles;if ($PlainText -or !$Singles) {$Data} else {V-Stacker ("Song   Artist/Movie",$Data.replace("`t","    "))};exit}
    pushd $Path2Dwnld
    $SCRIPT:URL = Get-URLs
    if ($Status) {$URL.GetEnumerator() | sort value -Descending;popd;exit}
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
    if ($Mode -eq "Format") {
        Write-AP "*Formatting Data in $(if (!$Movie) {"[$(Split-Path $Folder -leaf)]"} else {'Folder'})"
        Format-Songs $_
    }
    if ($Script:UpdateURL) {Write-AP "*Updating URL Database [$UpdateURL URL]";Update-URLs $URL}
    popd
}
<# @AP-IMPORT DEFINITIONS:
    Exe: axel
    AP-Modules: true
    Alias: ?:
#>


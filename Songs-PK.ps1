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
    [Switch]$AsObjects,
    [Switch]$TrackPlayer,
    [Switch]$DontCleanTemp,
    [Alias("d")][Switch]$Dbg,
    [Switch]$WhatIf,
    [Switch]$Help,
    [Alias("DontLearn","NoCrawl")][Switch]$NoPersist
)
#================================================|
Begin {
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.2] To Make this program independent of AP-Core Engine
#    GitHub: https://github.com/avdaredevil/AP-Compiler
# ==================================================================================================================|
$Script:PSHell=$(if($PSHell){$PSHell}elseif($PSScriptRoot){$PSScriptRoot}else{"."});
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KCmZ1bmN0aW9uIFByaW50LUxpc3Qge3BhcmFtKCR4LCBbU3dpdGNoXSRJblJlY3Vyc2UpDQoNCiAgICBpZiAoJHguY291bnQgLWxlIDEpIHtyZXR1cm4gPzooJEluUmVjdXJzZSl7JHh9eyJbJHhdIn19IGVsc2Ugew0KICAgICAgICByZXR1cm4gIlskKCgkeCB8ICUge1ByaW50LUxpc3QgJF8gLUluUmVjdXJzZX0pIC1qb2luICcsICcpXSINCiAgICB9DQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnLCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSAtb3IgJHRleHQuR2V0VHlwZSgpLk5hbWUgLW1hdGNoICJcW1xdJCIpIHtyZXR1cm4gJFRleHQgfD97IiRfIn18ICUge1dyaXRlLUFQICRfIC1Ob1NpZ246JE5vU2lnbiAtUGxhaW5UZXh0OiRQbGFpblRleHQgLUFsaWduICRBbGlnbn19DQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW5vdG1hdGNoICJeKCg/PE5OTD54KXwoPzxOUz5ucz8pKXswLDJ9KD88dD5cPiopKD88cz5bK1wtIVwqXCNcQF0pKD88dz4uKikiKSB7cmV0dXJuICRUZXh0fQ0KICAgICR0YiAgPSAiICAgICIqJE1hdGNoZXMudC5sZW5ndGg7DQogICAgJENvbCA9IEB7JysnPScyJzsnLSc9JzEyJzsnISc9JzE0JzsnKic9JzMnOycjJz0nRGFya0dyYXknOydAJz0nR3JheSd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgIGlmICghJENvbCkge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgICRTaWduID0gJChpZiAoJE5vU2lnbiAtb3IgJE1hdGNoZXMuTlMpIHsiIn0gZWxzZSB7IlskU2lnbl0gIn0pDQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9ICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiO2lmICghJERhdGEpIHtyZXR1cm59DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSINCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JChbYm9vbF0kTWF0Y2hlcy5OTkwpIC1mICRDb2wgJERhdGENCiAgICBpZiAoJFBhc3NUaHJ1KSB7JERhdGF9DQp9CgpmdW5jdGlvbiBDbGVhci1MaW5lIHsNCiAgICAkTm0gPSBbQ29uc29sZV06OldpbmRvd1dpZHRoDQogICAgJHQgPSBbQ29uc29sZV06OkN1cnNvclRvcDtbQ29uc29sZV06OkN1cnNvckxlZnQ9MA0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZSAoIiAiKiROTSkNCiAgICBbQ29uc29sZV06OkN1cnNvclRvcD0kdDtbQ29uc29sZV06OkN1cnNvckxlZnQ9MA0KfQoKZnVuY3Rpb24gTG9hZGluZy1NZXNzYWdlIHsNCiAgICBbQ21kbGV0QmluZGluZygpXXBhcmFtKFtTdHJpbmddJFRleHQgPSAiTG9hZGluZyIsIFtjaGFyXSRjID0gJy4nLFtBbGlhcygiQ3ljbGVzIiwiQ3ljbGVzUGVyQnVmZmVyIildW2RlY2ltYWxdJENQQj0xMjUwMCxbUGFyYW1ldGVyKFZhbHVlRnJvbVBpcGVsaW5lPSRUcnVlKV0kRGF0YVN0cmVhbSxbU3dpdGNoXSRPdXROdWxsKQ0KICAgIEJlZ2luIHskQlAgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGU7W0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEZhbHNlOyREb3QgPSAiIjskQ1QgPSAwOyRDUEJfTm9ybT1bTWF0aF06Ok1heCgkQ1BCLDEpO1dyaXRlLUhvc3QgLWYgWWVsbG93IC1Ob05ld0xpbmUgJFRleHQ7aWYgKCRDUEIgLWx0IDApIHt0aHJvdyAiVmFsdWUgb2YgQ1BCIGNhbm5vdCBiZSBsZXNzLXRoYW4tb3ItZXEgdG8gMC4iO3JldHVybn19DQogICAgUHJvY2VzcyB7DQogICAgICAgIDEuLltNYXRoXTo6TWF4KCgxLyRDUEIpLDEpIHwgJSB7DQogICAgICAgICAgICAkTEQgPSAkRG90DQogICAgICAgICAgICAkRG90ID0gIiAkYyIqKFtTeXN0ZW0uTWF0aF06OkZsb29yKCRDVC8kQ1BCX05vcm0pJTQpDQogICAgICAgICAgICBpZiAoJERvdCAtbmUgJExEKSB7DQogICAgICAgICAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JMZWZ0ID0gJFRleHQuTGVuZ3RoO1dyaXRlLUhvc3QgLWYgWWVsbG93IC1Ob05ld0xpbmUgIiREb3QkKCIgIiooNi0kRG90Lkxlbmd0aCkpIg0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgJENUKysNCiAgICAgICAgICAgIGlmICgkQ1BCIC1sdCAxKSB7c2xlZXAgLW0gMjAwfQ0KICAgICAgICB9DQogICAgICAgIGlmICghJE91dE51bGwpIHskRGF0YVN0cmVhbX0NCiAgICB9DQogICAgRU5EIHtbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkQnA7cnYgRE9ULENUO0NsZWFyLUxpbmV9DQp9CgpmdW5jdGlvbiBDb252ZXJ0LVRvQmFzZTY0IHtwYXJhbShbU3RyaW5nXSRUZXh0LCBbVmFsaWRhdGVTZXQoIlVURjgiLCJVbmljb2RlIildW1N0cmluZ10kRW5jb2RpbmcgPSAiVVRGOCIpDQoNCiAgICBbU3lzdGVtLkNvbnZlcnRdOjpUb0Jhc2U2NFN0cmluZyhbU3lzdGVtLlRleHQuRW5jb2RpbmddOjokRW5jb2RpbmcuR2V0Qnl0ZXMoJFRleHQpKQ0KfQoKZnVuY3Rpb24gR2V0LVdoZXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW3N0cmluZ10kRmlsZSwgW1N3aXRjaF0kQWxsKQ0KDQogICAgQVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7dGhyb3cgIk5lZWQgU3lzMzJcd2hlcmUgdG8gd29yayEiO3JldHVybn0NCiAgICAkT3V0ID0gd2hlcmUuZXhlICRmaWxlIDI+JG51bGwNCiAgICBpZiAoISRPdXQpIHtyZXR1cm59DQogICAgaWYgKCRBbGwpIHtyZXR1cm4gJE91dH0NCiAgICByZXR1cm4gQCgkT3V0KVswXQ0KfQoKZnVuY3Rpb24gU2l6ZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRCeXRlcywgW1N3aXRjaF0kQnlUaG91c2FuZCkNCg0KICAgICRCVCA9ID86KCRCeVRob3VzYW5kKXsxMDAwfXsxMDI0fQ0KICAgICRTaXplcyA9IEAoIiIsIksiLCJNIiwiRyIsIlQiLCJQIiwiRSIsIloiLCJZIikNCiAgICAkRGVnID0gW01hdGhdOjpGbG9vcihbTWF0aF06OkxvZygkYnl0ZXMsJEJUKSkNCiAgICAkRGVnID0gPzooJERlZyAtZ2UgJFNpemVzLmNvdW50KXskU2l6ZXMuY291bnQtMX17JERlZ30NCiAgICAkUmV0ID0gInswfSIgLWYgW01hdGhdOjpSb3VuZCgkQnl0ZXMvKFtNYXRoXTo6UG93KCRCVCwkRGVnKSksMikNCiAgICBpZiAoJHJldCAtZXEgIk5hTiIpIHtyZXR1cm4gJHJldH0NCiAgICBSZXR1cm4gIiRyZXQgJCgkU2l6ZXNbJERlZ10pQiINCn0KCmZ1bmN0aW9uIElOLUNvZGUtRGVidWctQ29uc29sZSB7V3JpdGUtSG9zdCAtZiB5ZWxsb3cgJ1tBUC1DT01QSUxFUl0gTW9kdWxlIFtJTi1Db2RlLURlYnVnLUNvbnNvbGVdIGRpc2FibGVkIGZvciB0aGlzIHByb2dyYW0nfQoKZnVuY3Rpb24gVGltZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRNaWxsaXNlY29uZHMsICRJbnB1dFR5cGUgPSAiTWlsbGlzZWNvbmRzIiwgW1N3aXRjaF0kRnVsbEZvcm0pDQoNCiAgICBpZiAoJE1pbGxpc2Vjb25kcyAtZXEgMCkge3JldHVybiAiMCAkKD86KCRmdWxsRm9ybSl7Ik1pbGxpc2Vjb25kcyJ9eyJtcyJ9KSJ9DQogICAgaWYgKCRJbnB1dFR5cGUgLW5lICIiKSB7DQogICAgICAgICRDb252ID0gQHsiTWlsbGlzZWNvbmRzIiA9IDF9DQogICAgICAgICRDb252ICs9IEB7IlNlY29uZHMiID0gMTAwMCokQ29udi5NaWxsaXNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7Ik1pbnV0ZXMiID0gNjAqJENvbnYuU2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiSG91cnMiID0gNjAqJENvbnYuTWludXRlc30NCiAgICAgICAgJENvbnYgKz0gQHsiRGF5cyIgPSAyNCokQ29udi5Ib3Vyc30NCiAgICAgICAgJENvbnYgKz0gQHsiWWVhcnMiID0gMzY1LjI1KiRDb252LkRheXN9DQogICAgICAgIGlmICgkQ29udi5Db250YWluc0tleSgkSW5wdXRUeXBlKSkgeyRNaWxsaXNlY29uZHMgKj0gJENvbnYuJElucHV0VHlwZX0NCiAgICB9DQogICAgJFNpZ24gID0gPzooJE1pbGxpc2Vjb25kcyAtbHQgMCl7LTF9ezF9DQogICAgJE1pbGxpc2Vjb25kcyAqPSAkU2lnbg0KICAgICRTcGFuICA9IE5ldy1UaW1lU3BhbiAoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApICQoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApLkFkZE1pbGxpc2Vjb25kcygkTWlsbGlzZWNvbmRzKQ0KICAgICRQcm9wcyA9ICgkc3BhbiB8IGdtIHwgPyB7JF8gLW1hdGNoICJUb3RhbCJ9KS5uYW1lDQogICAgJFNpemVzID0gPzooJEZ1bGxGb3JtKXskUHJvcHMgfCAlIHskXy5zdWJzdHJpbmcoNSl9fXtAKCJkYXlzIiwiaHJzIiwibXMiLCJtaW4iLCJzZWMiKX0NCiAgICAkU2l6ZXMgPSAkU2l6ZXNbMCwxLDMsNCwyXQ0KICAgICRQcm9wcyA9ICRQcm9wc1swLDEsMyw0LDJdDQogICAgJERlZyA9IC0xDQogICAgZG8gew0KICAgICAgICAkREVHKysNCiAgICB9IHdoaWxlIChbU3lzdGVtLk1hdGhdOjpSb3VuZCgkU3Bhbi4oJHByb3BzWyRkZWddKSwyKSAtbHQgMSkNCiAgICAkYW5zID0gJFNwYW4uKCRwcm9wc1skZGVnXSk7JHVuaXQgPSAkU2l6ZXNbJERlZ10NCiAgICBpZiAoJERFRyAtZXEgMCAtYW5kICRTcGFuLigkcHJvcHNbJGRlZ10pIC1nZSAzNjUuMjUpIHskYW5zIC89IDM2NS4yNTskdW5pdD0/OigkRnVsbEZvcm0peyJZZWFycyJ9eyJ5ciJ9fQ0KICAgICRSZXR1cm5hID0gIiQoJFNpZ24qW1N5c3RlbS5NYXRoXTo6Um91bmQoJGFucywyKSkiLCIkdW5pdCINCiAgICAkUmV0dXJuYVsxXSA9ID86KCRSZXR1cm5hWzBdIC1lcSAxKXskUmV0dXJuYVsxXS50cmltRW5kKCJzIil9eyRSZXR1cm5hWzFdfQ0KICAgIGlmICgkUmV0dXJuYVsxXSAtZXEgIm0iKSB7JFJldHVybmFbMV0gKz0gInMifQ0KICAgIFJldHVybiAoJFJldHVybmEgLWpvaW4oIiAiKSkNCn0KCmZ1bmN0aW9uIEdldC1BeGVsLURvd25sb2FkLURhdGEge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kRGF0YSkNCg0KICAgIGlmICghJERhdGEpIHtyZXR1cm59DQogICAgJERhdGEgPSAkRGF0YSAtbm90bWF0Y2ggIlxbICpcZCtcJVxdIiB8ID8geyIkXyIudHJpbSgpfQ0KICAgICRIYXNoID0gQHt9DQogICAgdHJ5eyRIYXNoLlNpemUgPSAkRGF0YVsxXS5zcGxpdCgiOiIpWzFdLnRyaW0oKS5zcGxpdCgiICIpWzBdfWNhdGNoe30NCiAgICAkRGF0YSB8ICUgew0KICAgICAgICBpZiAoISRIYXNoLlVSTCAtYW5kICRfIC1tYXRjaCAiXkluaXRpYWxpemluZyBkb3dubG9hZFw6ICg/PHVybD4uKykiKSB7DQogICAgICAgICAgICAkSGFzaC5VUkwgICA9ICRNYXRjaGVzLnVybC50cmltKCl9DQogICAgICAgIGlmICghJEhhc2guRmlsZSAtYW5kICRfIC1tYXRjaCAiXk9wZW5pbmcgb3V0cHV0IGZpbGUgKD88ZmlsZT4uKykiKSB7DQogICAgICAgICAgICAkSGFzaC5GaWxlICAgPSAkTWF0Y2hlcy5maWxlLnRyaW0oKX0NCiAgICAgICAgaWYgKCEkSGFzaC5TaXplIC1hbmQgJF8gLW1hdGNoICJeRG93bmxvYWRlZCAoPzxzaXplPltcZFwuXSspICg/PHVuaXQ+XHcrPylieXRlcyIpIHsNCiAgICAgICAgICAgICRzID0gJE1hdGNoZXMuc2l6ZQ0KICAgICAgICAgICAgJHUgPSAkTWF0Y2hlcy51bml0DQogICAgICAgICAgICBzd2l0Y2ggKCR1KSB7DQogICAgICAgICAgICAgICAgInRlcmEiICB7JHUgPSBbTWF0aF06OnBvdygxMDI0LDQpfQ0KICAgICAgICAgICAgICAgICJnaWdhIiAgeyR1ID0gW01hdGhdOjpwb3coMTAyNCwzKX0NCiAgICAgICAgICAgICAgICAibWVnYSIgIHskdSA9IFtNYXRoXTo6cG93KDEwMjQsMil9DQogICAgICAgICAgICAgICAgImtpbG8iICB7JHUgPSBbTWF0aF06OnBvdygxMDI0LDEpfQ0KICAgICAgICAgICAgICAgIGRlZmF1bHQgeyR1ID0gW01hdGhdOjpwb3coMTAyNCwwKX0NCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRIYXNoLlNpemUgPSBbZGVjaW1hbF0kcyokdX0NCiAgICB9DQogICAgJFRSID0gJERhdGFbLTFdLnNwbGl0KCIgIikNCiAgICAkSGFzaC5Eb3dubG9hZFNwZWVkID0gIiQoJFRSWy0yLC0xXS50cmltKCIoIiwiKSIpKSINCiAgICAkREwgPSAkVFJbNF0uc3BsaXQoIjoiKSB8ICUge1tpbnRdJF99DQogICAgc3dpdGNoICgkREwuY291bnQpIHsNCiAgICAgICAgMyB7JEhhc2guRG93bmxvYWRUaW1lID0gKCRETFswXSo2MCskRExbMV0pKjYwKyRETFsyXX0NCiAgICAgICAgMiB7JEhhc2guRG93bmxvYWRUaW1lID0gJERMWzBdKjYwKyRETFsxXX0NCiAgICAgICAgZGVmYXVsdCB7JEhhc2guRG93bmxvYWRUaW1lID0gJERMWzBdfQ0KICAgIH0NCiAgICAkSGFzaC5Eb3dubG9hZFRpbWUgKj0gMTAwMA0KICAgIHJldHVybiAkSGFzaA0KfQoKU2V0LUFsaWFzIGludiBQcm9jZXNzLVRyYW5zcGFyZW5jeQpTZXQtQWxpYXMgPzogSW52b2tlLVRlcm5hcnk=")))
# ========================================END=OF=COMPILER===========================================================|

if ($Help) {
    Write-AP "x*Help for [","xns!Songs-PK tool by APoorv Verma","xn*]:"
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
    Write-AP ">>*AsObjects - Used with <-l> Lists all the names with their links"
    Write-AP ">>*NoPersist - Prevents a failed download to go into persist mode"
    Write-AP ">>*DontCleanTemp - Does not delete downloaded files"
    Write-Host ""
    Write-AP ">!PS_Debug:"
    Write-AP ">>*WhatIf    - Shows what would happen if you ran the code w/o this flag"
    Write-AP ">>*DBG       - Displays lots of extra information while Bruteforcing/Persisting"
    Write-AP ">>*Verbose   - Show Additional Information"
    Write-Host ""
;Exit}
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if (!${Function:AP-Require}) {Write-Host -f red "[-] Please Compile with AP-Engine.";exit}
AP-Require "Internet" {Write-AP "!Need Internet To Function!";exit}
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
    $HD = @{
        "UserAgent"       = 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36'
        "Cache-Control"   = 'max-age=0'
        "Accept-Encoding" = 'gzip, deflate, sdch'
        "Accept-Language" = 'en-US,en;q=0.8'
        "Cookie"          = '__cfduid=dcd26fd7e78eceefa8b36f655a8dedb991430576847'
    }
    #------------------|
    if ($Mode -like "Download*" -and !$Movie -and !$ListMode -and !$Status) {Write-AP "*Switching to Format Mode";$Mode = "Format"}
    if ($Mode -eq "Format" -and $Movie) {Write-AP "*Switching to Movie Songs Download";$Mode = "Download"}
    if ($Mode -eq "Format" -and !(Test-Path -type Container -LiteralPath $Folder)) {Write-AP "-The Folder Supplied Does not exist";exit} else {$Folder = Resolve-Path $Folder -ea SilentlyContinue}
    "axel","7z" | % {if (!$(try {& $_} catch {})) {Write-AP "-$_ Is not in path. Please add them!";exit}}
    #------------------|
    function List-New-Songs ([Switch]$Singles, [Switch]$AsObjects) {
        $Payload = irm (Proxy-Conv "http://www.songspk.link") -Headers $HD
        $Pay = $Payload.split("`n") -match ([Regex]::Escape('<li><a class="play"></a><a href="http://')+".+?"+(?:($Singles){"mp3-single-track"}{"indian_songs"})) | % {
            $global:t = $_ -replace "^.+?href=.";
            $o = @{name=""};$e = [regex]::Escape
            $o.href = $t.split('"')[0];$q = "(";$qe=")?";$b = "("+$e.Invoke('</b>')+")?"
            if ($t -match "\>(?<ap>.+?)$($b+$q+$e.Invoke('</div>')+$qe+$b+$e.Invoke('</a>'))") {$o.name = $Matches.ap.split('>')[-1]}
            [PsCustomObject]$o
        }
        if ($AsObjects) {return $Pay | select name,href}
        $Pay.name
#        Try {
#            $IE = Invoke-WebRequest (Proxy-Conv "http://www.songspk.link") -Headers $HD
            #$Table = ($IE.Document.getElementById('table195').rows | % {$_.outertext.replace('Movie Songs','').replace('Singles','').trim()})[2..1000]
#            $Table = "songs-list1$(if ($Singles) {'1'})( ?)+$"
#            $IE.ParsedHtml.getElementsByTagName("ul") | ? {$_.classname -match $Table} | % {
#                if ($Singles) {
#                    if ($PlainText) {$lb = "[";$rb = "]"}
#                    @($_.childNodes)[1..100] | % {"{0}`t$lb{1}$rb" -f @($_.childNodes)[1,2].InnerText.trimStart()}
#                } else {$_.getElementsByTagName("a") | % {$_.InnerText}}
#                } else {$_.innertext -replace " *Movie Songs|(^.+Category )","|" -split "\|" | % {$_ -replace "(?! )[\s]"}}
#            } | ? {$_}
#        } Catch {Write-AP "-Could not fetch songs [$_]";return}
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
            <#@===========================================================================================|.eu:8;co.us:5;.com:2;soundz.mp3slash.net/320:1;320net.songspk.onl:3;.in:7;.co:0;z.us:70;z.eu:3;.net:65;.us:18;net.us:0|===========================================================================================@#>
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
                $Key = $(if ($a[0].Length -ge $IndepURLThresh) {$a[0].replace("<bit>",(?:($Kbps128){}{"/320"}))} else {"www.SongsPK320$($a[0])"})
                $Hash += @{$Key=[int]$(try {if ([int]$a[1] -gt $Thresh) {$a[1]%$Thresh+$Thresh} else {$a[1]}} catch {$Thresh/4})}
            }
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
        $URLSkeleton = $("http://<URL>/")+$(if ($Kbps128) {"128/"})+$("indian/<MovPattern>.zip")
        $URLCNT = 0
        foreach ($U in ($URL.GetEnumerator() | sort value -Descending).Name) {
            $MovPattern = $Movie,$Year,$(if ($Kbps128) {"128Kbps"} else {"320Kbps"})
            $URLCNT++;$CipherErrorCurr = -1
            Write-AP ">*Using URL-$URLCNT"
            foreach ($seq in (0,1,2),(0,2),(0,2,1)) {
                foreach ($Suffix in ("(Songs.PK)|[Songspk.LIVE]"+(?:($Year -lt 2015){'|(Songspk.LINK)|(Songspk.LINK]|[Songspk.LINK]'}{})+"|(Songspk.LIVE)|(Songspk.GURU)|[Songspk.GURU]").split("|")) {
                    $FL = $MovPattern[$Seq] -join "-"
                    if (test-path -type leaf -LiteralPath "$FL$Suffix.zip") {[Console]::CursorTop--;Clear-Line;Write-AP "!Using existing File";Return "$FL$Suffix.zip"}
                    if ($Dbg) {Write-AP ">>*Attempting [$(Proxy-Conv $URLSkeleton.replace('<URL>',$U).replace('<MovPattern>',"$FL$Suffix"))]"}
                    $axel = axel -n $AxelThreads -v -a (Proxy-Conv $URLSkeleton.replace("<URL>",$U).replace("<MovPattern>","$FL$Suffix")) | Loading-Message "        Downloading" -CPB 200 | ? {$_ -notmatch "\[ {1,}\d"}
                    if ($CipherErrorCurr -ne $URLCNT -and $Axel -match "Unable to connect to server") {Write-AP ">>!Blocked by server x( Use -UseProxy Parameter to bypass";$CipherErrorCurr = $URLCNT}
                    if (test-path -type leaf -LiteralPath "$FL$Suffix.zip") {
                        $Axel = Get-Axel-Download-Data $Axel
                        if ("$(Size-Adj $Axel.Size)".replace(" ","").replace("NaN","0")/1MB -lt $DummyFileSize/1MB) {Write-AP ">>!Dummy File Recieved #LOL";$Axel = ""}
                        if (!$Axel -or "$(Size-Adj $Axel.Size)" -match "NaN") {if(!$DontCleanTemp){del "$FL$Suffix.zip" -EA SilentlyContinue};Continue}
                        $Script:UpdateURL++
                        $URL.$U++
                        write-AP "+Downloaded Movie Songs in $(Time-Adj $Axel.DownloadTime) [Size: $(Size-Adj $Axel.Size) @ $($Axel.DownloadSpeed)]"
                        Return $Axel.File
                    }
                }
            }
        }
        if (!$NoPersist) {
            Write-AP ">*Persiting Download"
            $LinkDB = @{}
            foreach ($p in ($Year+1)..($Year-[Math]::Abs($PersistYears))) {
                foreach ($Symbol in "-","_") {
                    $Schemas = ?:($p -lt 2015){"www.songspk.link/indian-mp3-songs","www.songspk.name/indian"}{"albums.songspk.link/indian_songs"}
                    foreach ($Schema in $Schemas) {
                        $name = ?:($p -lt 2015){"$Movie-$p-mp3-songs"}{"$Movie-mp3-songs"}
                        $Link = "http://$Schema/$($name.replace('-',$Symbol))$(?:($p -lt 2015){'.html'}{})".toLower()
                        if ($LinkDB.$Link) {continue} else {$LinkDB.$Link++}
                        try {
                            if ($Dbg) {Write-AP ">>*Attempting Schema [$(Proxy-Conv $Link)]"}
                            $Crawler = iwr (Proxy-Conv $Link) -Headers $HD
                            if ($Crawler.RawContent -match "logos/comingsoon.jpg") {$Crawler = "";continue}
                            if ("$p" -ne "$Year" -and $p -lt 2015) {Write-AP ">!Maybe Invalid Year was typed! Trying with $p";return Download-ZIP $Movie $p -Kbps128:$Kbps128} else {break}
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
                if (test-path -type leaf -LiteralPath $FL) {$Script:UpdateURL++;$URL.$U++;write-AP "+Downloaded Movie Songs in $(Time-Adj $Axel.DownloadTime) [Size: $(Size-Adj $Axel.Size) @ $($Axel.DownloadSpeed)]";Return $FL}
            } else {Write-AP ">!Could not Scrape URL :("}
        }
        Write-AP "-Could Not Download Songs for Movie [$($Movie.replace('-'," "))]"
    }
    function Format-Songs {
        pushd $Folder;$Fmt=1
        $Filter = "(Songs\.pk|Songspk\.(name|LINK|SITE|LIVE|GURU))"
        $Filter = "^ *(\[$Filter\] *(?<name>.+)|(?<name>.+?) *\[$Filter\]) *\.(?<ext>.+)$"
        $Files = ((ls -file) -match $Filter).Name
        if (!$Files) {Write-AP "!All songs seem formatted";popd;Return}
        $Keywords = @{}
        Write-AP "*Calcuating Movies Names"
        $Files | ? {$_ -match $Filter} | % {$Matches['name']} | % {
            $Data = $_ -replace " {2,}"," " -replace(" ?- ?","|")
            $Data = "|$($Data.Trim())|"
            0..9   | % {$Data = $Data.replace("|0$_|","|")}
            10..50 | % {$Data = $Data.replace("|$_|","|")}
            $Data.trim(" ","|").split("|") | % {$Keywords.$_++}
        }
        $Movies = @();$KeyWords.GetEnumerator() | ? {$_.Value -gt 3} | % {$Movies += ,$_.Key}
        if ($Movies.count -gt 0) {
            Write-AP "+Found $($Movies.Count) Movie$(if ($Movies.Count -gt 1) {'s'})!$(if($PSCmdlet.MyInvocation.BoundParameters['Verbose'].IsPresent){" "+$(Print-List $Movies)})"
        } else {
            $Test=0;$Fmt=3;$Files | ? {$_ -match $Filter} | ? {$Matches['name'] -match "^[01]\d .+$"} | % {$test++}
            if ($test -gt 3) {$Fmt=4}
            Write-AP "*All Songs are in Fomat $Fmt [No Movie in Name]!"
        }
        $Files | ? {$_ -match $Filter} | % {
            $ext=$Matches.ext;$Data = $Matches.name -replace "\.m(p3|4a)" -replace " {2,}"," " -replace(" ?- ?","-")
            $Data = "-$($Data.Trim())-"
            0..9   | % {$Data = $Data.replace("-0$_-","")}
            10..50 | % {$Data = $Data.replace("-$_-","")}
            $Data = $Data.replace("--","-")
            $Movies | % {$Data = $Data -replace("$_-$_","::::") -replace "$_" -replace("::::","$_")}
            if ($fmt -eq 4 -and $Data -match "^-[01]\d (?<nm>.+)-$") {$Data = $Matches.nm}
            $Data = "$($Data.trim(" ",'-').replace('-',' - ')).$ext"
            if($WhatIf){$Data = "$_] ==> [$Data";$Prep="![W_IF] "}else{$prep="+"}
            if (Test-Path -type Leaf -LiteralPath $Data -ea SilentlyContinue) {if ($OverWrite) {Write-AP -N:$WhatIf ">${Prep}Overwriting [$Data]";if(!$WhatIf){del $Data}} else {Write-AP ">!File [$Data] exists, Skipping"}} else {
                Write-AP -N:$WhatIf ">${Prep}Formatting [$Data]"
            }
            if (!(Test-Path -type Leaf -LiteralPath $Data -ea SilentlyContinue)) {if(!$WhatIf){cmd /c ren $_ $Data}}
        }
        $Pics = Get-ChildItem -File | ? {$_ -match "\.(jpe?g|png)$"}
        if ($Pics) {
            Write-AP "*Moving $($Pics.Count) Movie Picture$(if ($Pics.Count -gt 1) {'s'}) to [Movie-Pictures] Folder"
            if (!(Test-Path -type Container "Movie-Pictures")) {md Movie-Pictures | Out-Null}
            $Pics | % {if (Test-Path -LiteralPath "Movie-Pictures\$_") {del "Movie-Pictures\$_"};mv $_ Movie-Pictures}
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
    if ($ListMode) {$Data = List-New-Songs -Singles:$Singles -AsObjects:$AsObjects;$Data;exit}
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
            if(!$DontCleanTemp){del $File}
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


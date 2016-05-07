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
    [Switch]$DontCleanTemp,
    [Alias("d")][Switch]$Dbg,
    [Switch]$WhatIf,
    [Switch]$Help,
    [Alias("DontLearn","NoCrawl")][Switch]$NoPersist
)
#================================================|
Begin {
# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.1] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KCmZ1bmN0aW9uIFByaW50LUxpc3Qge3BhcmFtKCR4LCBbU3dpdGNoXSRJblJlY3Vyc2UpDQoNCiAgICBpZiAoJHguY291bnQgLWxlIDEpIHtyZXR1cm4gPzooJEluUmVjdXJzZSl7JHh9eyJbJHhdIn19IGVsc2Ugew0KICAgICAgICByZXR1cm4gIlskKCgkeCB8ICUge1ByaW50LUxpc3QgJF8gLUluUmVjdXJzZX0pIC1qb2luICcsICcpXSINCiAgICB9DQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnLCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSkge3JldHVybiAkVGV4dCB8P3siJF8ifXwgJSB7V3JpdGUtQVAgJF8gLU5vU2lnbjokTm9TaWduIC1QbGFpblRleHQ6JFBsYWluVGV4dCAtQWxpZ24gJEFsaWdufX0NCiAgICBpZiAoISR0ZXh0IC1vciAkdGV4dCAtbm90bWF0Y2ggIl4oKD88Tk5MPngpfCg/PE5TPm5zKSl7MCwyfSg/PHQ+XD4qKSg/PHM+WytcLSFcKlwjXSkoPzx3Pi4qKSIpIHtyZXR1cm4gJFRleHR9DQogICAgJHRiICA9ICIgICAgIiokTWF0Y2hlcy50Lmxlbmd0aDsNCiAgICAkQ29sID0gQHsnKyc9JzInOyctJz0nMTInOychJz0nMTQnOycqJz0nMyc7JyMnPSdEYXJrR3JheSd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgIGlmICghJENvbCkge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgICRTaWduID0gJChpZiAoJE5vU2lnbiAtb3IgJE1hdGNoZXMuTlMpIHsiIn0gZWxzZSB7IlskU2lnbl0gIn0pDQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9ICIkdGIkU2lnbiQoJE1hdGNoZXMuVykiO2lmICghJERhdGEpIHtyZXR1cm59DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gIiR0YiRTaWduJCgkTWF0Y2hlcy5XKSINCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JChbYm9vbF0kTWF0Y2hlcy5OTkwpIC1mICRDb2wgJERhdGENCiAgICBpZiAoJFBhc3NUaHJ1KSB7JERhdGF9DQp9CgpmdW5jdGlvbiBDbGVhci1MaW5lIHsNCiAgICAkTm0gPSAkSG9zdC5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoLTENCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgIiQoKCJgYiIqJE5NKSsoIiAiKiROTSkrKCJgYiIqJE5NKSkiDQp9CgpmdW5jdGlvbiBMb2FkaW5nLU1lc3NhZ2Ugew0KICAgIFtDbWRsZXRCaW5kaW5nKCldcGFyYW0oW1N0cmluZ10kVGV4dCA9ICJMb2FkaW5nIiwgW2NoYXJdJGMgPSAnLicsW0FsaWFzKCJDeWNsZXMiLCJDeWNsZXNQZXJCdWZmZXIiKV1bZGVjaW1hbF0kQ1BCPTEyNTAwLFtQYXJhbWV0ZXIoVmFsdWVGcm9tUGlwZWxpbmU9JFRydWUpXSREYXRhU3RyZWFtLFtTd2l0Y2hdJE91dE51bGwpDQogICAgQmVnaW4geyRCUCA9IFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZTtbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2U7JERvdCA9ICIiOyRDVCA9IDA7JENQQl9Ob3JtPVtNYXRoXTo6TWF4KCRDUEIsMSk7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAkVGV4dDtpZiAoJENQQiAtbHQgMCkge3Rocm93ICJWYWx1ZSBvZiBDUEIgY2Fubm90IGJlIGxlc3MtdGhhbi1vci1lcSB0byAwLiI7cmV0dXJufX0NCiAgICBQcm9jZXNzIHsNCiAgICAgICAgMS4uW01hdGhdOjpNYXgoKDEvJENQQiksMSkgfCAlIHsNCiAgICAgICAgICAgICRMRCA9ICREb3QNCiAgICAgICAgICAgICREb3QgPSAiICRjIiooW1N5c3RlbS5NYXRoXTo6Rmxvb3IoJENULyRDUEJfTm9ybSklNCkNCiAgICAgICAgICAgIGlmICgkRG90IC1uZSAkTEQpIHsNCiAgICAgICAgICAgICAgICBbQ29uc29sZV06OkN1cnNvckxlZnQgPSAkVGV4dC5MZW5ndGg7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAiJERvdCQoIiAiKig2LSREb3QuTGVuZ3RoKSkiDQogICAgICAgICAgICB9DQogICAgICAgICAgICAkQ1QrKw0KICAgICAgICAgICAgaWYgKCRDUEIgLWx0IDEpIHtzbGVlcCAtbSAyMDB9DQogICAgICAgIH0NCiAgICAgICAgaWYgKCEkT3V0TnVsbCkgeyREYXRhU3RyZWFtfQ0KICAgIH0NCiAgICBFTkQge1tDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRCcDtydiBET1QsQ1Q7Q2xlYXItTGluZX0NCn0KCmZ1bmN0aW9uIENvbnZlcnQtVG9CYXNlNjQge3BhcmFtKFtTdHJpbmddJFRleHQsIFtWYWxpZGF0ZVNldCgiVVRGOCIsIlVuaWNvZGUiKV1bU3RyaW5nXSRFbmNvZGluZyA9ICJVVEY4IikNCg0KICAgIFtTeXN0ZW0uQ29udmVydF06OlRvQmFzZTY0U3RyaW5nKFtTeXN0ZW0uVGV4dC5FbmNvZGluZ106OiRFbmNvZGluZy5HZXRCeXRlcygkVGV4dCkpDQp9CgpmdW5jdGlvbiBHZXQtV2hlcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bc3RyaW5nXSRGaWxlLCBbU3dpdGNoXSRBbGwpDQoNCiAgICBBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHt0aHJvdyAiTmVlZCBTeXMzMlx3aGVyZSB0byB3b3JrISI7cmV0dXJufQ0KICAgICRPdXQgPSB3aGVyZS5leGUgJGZpbGUgMj4kbnVsbA0KICAgIGlmICghJE91dCkge3JldHVybn0NCiAgICBpZiAoJEFsbCkge3JldHVybiAkT3V0fQ0KICAgIHJldHVybiBAKCRPdXQpWzBdDQp9CgpmdW5jdGlvbiBTaXplLUFkaiB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JHRydWUpXVtEb3VibGVdJEJ5dGVzLCBbU3dpdGNoXSRCeVRob3VzYW5kKQ0KDQogICAgJEJUID0gPzooJEJ5VGhvdXNhbmQpezEwMDB9ezEwMjR9DQogICAgJFNpemVzID0gQCgiIiwiSyIsIk0iLCJHIiwiVCIsIlAiLCJFIiwiWiIsIlkiKQ0KICAgICREZWcgPSBbTWF0aF06OkZsb29yKFtNYXRoXTo6TG9nKCRieXRlcywkQlQpKQ0KICAgICREZWcgPSA/OigkRGVnIC1nZSAkU2l6ZXMuY291bnQpeyRTaXplcy5jb3VudC0xfXskRGVnfQ0KICAgICRSZXQgPSAiezB9IiAtZiBbTWF0aF06OlJvdW5kKCRCeXRlcy8oW01hdGhdOjpQb3coJEJULCREZWcpKSwyKQ0KICAgIGlmICgkcmV0IC1lcSAiTmFOIikge3JldHVybiAkcmV0fQ0KICAgIFJldHVybiAiJHJldCAkKCRTaXplc1skRGVnXSlCIg0KfQoKZnVuY3Rpb24gU3RhY2tlciB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtPYmplY3RbXV0kRGF0YSwgW0ludDMyXSRTcGFjZT0kRF9TcGFjZSwgW1N3aXRjaF0kVHJpbT0kZmFsc2UsIFtBbGlhcygiVGFiIiwiQnlUYWIiLCJUYWJiZWQiLCJCVCIpXVtTd2l0Y2hdJEJ5VGFiYmluZz0kZmFsc2UpDQoNCiAgICBpZiAoJFNwYWNlIC1sdCAxKSB7dGhyb3cgIlRoZSBTcGFjZSBWYXJpYWJsZSBjYW5ub3QgYmUgbGVzcyB0aGFuIDEiO2V4aXR9DQogICAgW1N0cmluZ10kQnVmZmVyID0gIiI7ICRkaXYgPSAnfC0oXysjK18pLXwnOyAkRElWWCA9ICdbW1svfF8rX3xcXV1dJw0KIyAgICAkRGF0YSB8ICUgeyRCdWZmZXIgKz0gIiQoIiRfIi5yZXBsYWNlKCJgbiIsJERpdikpJERpdiJ9DQogICAgJEZpbGUgPSAiJGVudjp0ZW1wXCQoR2V0LVJhbmRvbSktU3RhY2sudHh0Ig0KICAgICREYXRhID4gJEZpbGUNCiAgICAkQnVmZmVyID0gW0lPLkZpbGVdOjpSZWFkQWxsTGluZXMoJGZpbGUpIC1qb2luKCREaXYpDQogICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiYG4iLCREaXYpDQogICAgZGVsIC1Gb3JjZSAkRmlsZSB8IG91dC1udWxsDQogICAgaWYgKCRCeVRhYmJpbmcpIHsNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIudHJpbSgkRGl2KQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2IiozLCREaXYpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKjIsJERpdikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiAiLCIkRElWWCIpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiLCJgbiIpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiRESVZYIiwiJERpdiAiKQ0KICAgICAgICBbU3RyaW5nW11dICRCdWZmZXJDID0gJEJ1ZmZlci5zcGxpdCgiYG4iKQ0KICAgIH0gZWxzZSB7DQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKiRTcGFjZSwiYG4iKQ0KICAgICAgICBbT2JqZWN0W11dICRCdWZmZXJDID0gJEJ1ZmZlci5zcGxpdCgiYG4iKQ0KICAgICAgICBpZiAoISgkQnVmZmVyQ1stMV0pKSB7JEJ1ZmZlckMgPSAkQnVmZmVyQ1swLi4oJEJ1ZmZlckMuTGVuZ3RoLTIpXX0NCiAgICB9DQogICAgJEJ1ZmZlckNbMF0gPSAkQnVmZmVyQ1swXS50cmltc3RhcnQoIiREaXYiKQ0KICAgICRCdWZmZXJDID0gJEJ1ZmZlckMgfCAlIHtpZiAoJHRyaW0pIHskXy50cmltKCREaXYpfSBlbHNlIHskX319IHwgJSB7JF8ucmVwbGFjZSgkRGl2LCJgbiIpfSB8ICUgeyRffQ0KICAgIHJldHVybiAkQnVmZmVyQw0KIyAgICBbT2JqZWN0W11bXV0gJEJ1ZmZlckY7DQojICAgIGZvciAoJGkgPSAwOyAkaSAtbHQgJEJ1ZmZlckMuY291bnQ7JGkrKykgew0KIyAgICAgICAgJERUU3RyZWFtID0gKCRCdWZmZXJDWyRpXSkuc3BsaXQoImBuIikNCiMgICAgICAgICRCdWZmZXJGICs9IEAoJERUU3RyZWFtWzBdKQ0KIyAgICAgICAgZm9yICgkaiA9IDE7JGogLWx0ICREVFN0cmVhbS5jb3VudDsgJGorKykgew0KIyAgICAgICAgICAgICRCdWZmZXJGWyRJXSArPSAkRFRTdHJlYW1bJGpdDQojIyAgICAgICAgICAgICItLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIg0KIyAgICAgICAgfQ0KIyMgICAgICAgICJ4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4Ig0KIyAgICB9DQojIyAgICBSZXR1cm4gJEJ1ZmZlckYNCn0KCmZ1bmN0aW9uIFYtU3RhY2tlciB7DQogICAgW0NtZGxldEJpbmRpbmcoKV0NCiAgICBwYXJhbShbUGFyYW1ldGVyKFZhbHVlRnJvbVBpcGVsaW5lPSR0cnVlLE1hbmRhdG9yeT0kdHJ1ZSldJERhdGEsW2ludF0kU1BDID0gMikNCiAgICBiZWdpbiAgIHskV29yZFJhdGlvRXBzaWxvbiA9IC41fQ0KICAgIFByb2Nlc3MgeyRERCArPSAsJERhdGF9DQogICAgRW5kIHsNCiAgICAgICAgW09iamVjdFtdXSREYXRhID0gU3RhY2tlciAoRmxhdHRlbiAkREQpDQogICAgICAgICRMZW4gICAgICAgICAgICA9IEAoLTEsLTEpDQogICAgICAgIGZvciAoJEQ9MDskRCAtbHQgJERhdGEuY291bnQ7JEQrKykgew0KICAgICAgICAgICAgaWYgKCREYXRhWyREXS5MZW5ndGggLWd0ICRMZW5bMF0pIHskTGVuID0gKCREYXRhWyREXS5MZW5ndGgsICREKX0NCiAgICAgICAgfQ0KICAgICAgICAkRGF0YSAgICAgICA9ICgoJERhdGEsIiIgfCAlIHskX30pWyRMZW5bMV1dIC1zcGxpdCAiYG4iKS50cmltU3RhcnQoKQ0KICAgICAgICBbb2JqZWN0W11dJENvbG1uICAgICAgPSAkRGF0YVswXSAtc3BsaXQgKCIgIiokU1BDKSB8ICUgeyRfLnRyaW0oKX0gfCA/IHskX30NCiAgICAgICAgJENvbG1uUG9zICAgPSAkQ29sbW4gfCAlIHskRGF0YVswXS5JbmRleE9mKCRfKX0NCiAgICAgICAgJFN0YWNrVGFibGUgPSBOZXctT2JqZWN0IHN5c3RlbS5EYXRhLkRhdGFUYWJsZSAiVmVydGljYWwgU3RhY2tzIg0KICAgICAgICBmb3JlYWNoICgkcCBpbiAkQ29sbW4pIHsNCiAgICAgICAgICAgICRTdGFja1RhYmxlLmNvbHVtbnMuYWRkKChOZXctT2JqZWN0IHN5c3RlbS5EYXRhLkRhdGFDb2x1bW4gJHAsKFtzdHJpbmddKSkpDQogICAgICAgIH0NCiAgICAgICAgJERhdGFbMS4uKCREYXRhLkxlbmd0aC0xKV0gfCA/IHskXy50cmltKCI9IiwiLSIsIiAiKX0gfCAlIHsNCiAgICAgICAgICAgICRUID0gQCgpDQogICAgICAgICAgICAkRExpbmUgPSAkXw0KICAgICAgICAgICAgZm9yZWFjaCAoJHAgaW4gKFtDb25zb2xlXTo6QnVmZmVyV2lkdGgvJENvbG1uLmxlbmd0aCkuLiRTUEMpIHsNCiAgICAgICAgICAgICAgICBbb2JqZWN0W11dJFQgPSAkRExpbmUgLXNwbGl0ICgiICIqJHApIHwgPyB7JF8udHJpbSgiICIsIi0iKX0NCiAgICAgICAgICAgICAgICBpZiAoJHQuY291bnQgLWVxICRDb2xtbi5jb3VudCkge2JyZWFrfQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgaWYgKCR0LmNvdW50IC1uZSAkQ29sbW4uY291bnQpIHsNCiAgICAgICAgICAgICAgICAkVCA9IDEuLiRDb2xtbi5jb3VudCB8ICUgeyIifQ0KICAgICAgICAgICAgICAgICRUbXAgPSAkRExpbmUgLXNwbGl0ICgiICIqJFNQQykgfCA/IHskXy50cmltKCIgIiwiLSIpfQ0KICAgICAgICAgICAgICAgICRUbXBJbmRleCA9IDANCiAgICAgICAgICAgICAgICAwLi4oJFQuY291bnQtMSkgfCAlIHsNCiAgICAgICAgICAgICAgICAgICAgaWYgKFtNYXRoXTo6QWJzKCRETGluZS5JbmRleE9mKCRUbXBbJFRtcEluZGV4XSkgLSAkQ29sbW5Qb3NbJF9dKSAtbHQgW01hdGhdOjpDZWlsaW5nKCRUbXBbJFRtcEluZGV4XS5MZW5ndGgqJFdvcmRSYXRpb0Vwc2lsb24pKSB7JFRbJF9dID0gJFRtcFskVG1wSW5kZXhdOyRUbXBJbmRleCsrfQ0KICAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgICAgICBpZiAoJFRtcEluZGV4IC1sZSAoJFRtcC5jb3VudC0xKSkgeyRUWyRUbXBJbmRleF0gPSAkVG1wWygkVG1wSW5kZXgpLi4oJFRtcC5jb3VudC0xKV0gLWpvaW4oInwiKX0NCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRydyA9ICRTdGFja1RhYmxlLk5ld1JvdygpDQogICAgICAgICAgICBmb3JlYWNoICgkUlQgaW4gKDAuLigkQ29sbW4uY291bnQtMSkpKSB7DQogICAgICAgICAgICAgICAgJHJ3LigkQ29sbW5bJFJ0XSkgPSAoJFRbJHJ0XSsiICIpLnRyaW0oKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgJFN0YWNrVGFibGUuUm93cy5BZGQoJHJ3KQ0KICAgICAgICB9DQogICAgICAgIHJldHVybiAkU3RhY2tUYWJsZQ0KICAgIH0NCn0KCmZ1bmN0aW9uIFRpbWUtQWRqIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW0RvdWJsZV0kTWlsbGlzZWNvbmRzLCAkSW5wdXRUeXBlID0gIk1pbGxpc2Vjb25kcyIsIFtTd2l0Y2hdJEZ1bGxGb3JtKQ0KDQogICAgaWYgKCRNaWxsaXNlY29uZHMgLWVxIDApIHtyZXR1cm4gIjAgJCg/OigkZnVsbEZvcm0peyJNaWxsaXNlY29uZHMifXsibXMifSkifQ0KICAgIGlmICgkSW5wdXRUeXBlIC1uZSAiIikgew0KICAgICAgICAkQ29udiA9IEB7Ik1pbGxpc2Vjb25kcyIgPSAxfQ0KICAgICAgICAkQ29udiArPSBAeyJTZWNvbmRzIiA9IDEwMDAqJENvbnYuTWlsbGlzZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJNaW51dGVzIiA9IDYwKiRDb252LlNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7IkhvdXJzIiA9IDYwKiRDb252Lk1pbnV0ZXN9DQogICAgICAgICRDb252ICs9IEB7IkRheXMiID0gMjQqJENvbnYuSG91cnN9DQogICAgICAgICRDb252ICs9IEB7IlllYXJzIiA9IDM2NS4yNSokQ29udi5EYXlzfQ0KICAgICAgICBpZiAoJENvbnYuQ29udGFpbnNLZXkoJElucHV0VHlwZSkpIHskTWlsbGlzZWNvbmRzICo9ICRDb252LiRJbnB1dFR5cGV9DQogICAgfQ0KICAgICRTaWduICA9ID86KCRNaWxsaXNlY29uZHMgLWx0IDApey0xfXsxfQ0KICAgICRNaWxsaXNlY29uZHMgKj0gJFNpZ24NCiAgICAkU3BhbiAgPSBOZXctVGltZVNwYW4gKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKSAkKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKS5BZGRNaWxsaXNlY29uZHMoJE1pbGxpc2Vjb25kcykNCiAgICAkUHJvcHMgPSAoJHNwYW4gfCBnbSB8ID8geyRfIC1tYXRjaCAiVG90YWwifSkubmFtZQ0KICAgICRTaXplcyA9ID86KCRGdWxsRm9ybSl7JFByb3BzIHwgJSB7JF8uc3Vic3RyaW5nKDUpfX17QCgiZGF5cyIsImhycyIsIm1zIiwibWluIiwic2VjIil9DQogICAgJFNpemVzID0gJFNpemVzWzAsMSwzLDQsMl0NCiAgICAkUHJvcHMgPSAkUHJvcHNbMCwxLDMsNCwyXQ0KICAgICREZWcgPSAtMQ0KICAgIGRvIHsNCiAgICAgICAgJERFRysrDQogICAgfSB3aGlsZSAoW1N5c3RlbS5NYXRoXTo6Um91bmQoJFNwYW4uKCRwcm9wc1skZGVnXSksMikgLWx0IDEpDQogICAgJGFucyA9ICRTcGFuLigkcHJvcHNbJGRlZ10pOyR1bml0ID0gJFNpemVzWyREZWddDQogICAgaWYgKCRERUcgLWVxIDAgLWFuZCAkU3Bhbi4oJHByb3BzWyRkZWddKSAtZ2UgMzY1LjI1KSB7JGFucyAvPSAzNjUuMjU7JHVuaXQ9PzooJEZ1bGxGb3JtKXsiWWVhcnMifXsieXIifX0NCiAgICAkUmV0dXJuYSA9ICIkKCRTaWduKltTeXN0ZW0uTWF0aF06OlJvdW5kKCRhbnMsMikpIiwiJHVuaXQiDQogICAgJFJldHVybmFbMV0gPSA/OigkUmV0dXJuYVswXSAtZXEgMSl7JFJldHVybmFbMV0udHJpbUVuZCgicyIpfXskUmV0dXJuYVsxXX0NCiAgICBpZiAoJFJldHVybmFbMV0gLWVxICJtIikgeyRSZXR1cm5hWzFdICs9ICJzIn0NCiAgICBSZXR1cm4gKCRSZXR1cm5hIC1qb2luKCIgIikpDQp9CgpmdW5jdGlvbiBHZXQtQXhlbC1Eb3dubG9hZC1EYXRhIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJERhdGEpDQoNCiAgICBpZiAoISREYXRhKSB7cmV0dXJufQ0KICAgIHRyeSB7DQogICAgICAgICRIYXNoID0gQHt9DQogICAgICAgICRIYXNoLlVSTCAgID0gKCREYXRhWzBdLnNwbGl0KCI6IilbMS4uMTAwMF0gLWpvaW4oIjoiKSkudHJpbSgpDQogICAgICAgICRIYXNoLlNpemUgPSAkRGF0YVsxXS5zcGxpdCgiOiIpWzFdLnRyaW0oKS5zcGxpdCgiICIpWzBdDQogICAgICAgICRIYXNoLkZpbGUgID0gJERhdGFbMl0uc3Vic3RyaW5nKDE5KS50cmltKCkNCiAgICAgICAgJFRSID0gJERhdGFbLTFdLnNwbGl0KCIgIikNCiAgICAgICAgJEhhc2guRG93bmxvYWRTcGVlZCA9ICIkKCRUUlstMiwtMV0udHJpbSgiKCIsIikiKSkiDQogICAgICAgICRETCA9ICRUUls0XS5zcGxpdCgiOiIpIHwgJSB7W2ludF0kX30NCiAgICAgICAgc3dpdGNoICgkREwuY291bnQpIHsNCiAgICAgICAgICAgIDMgeyRIYXNoLkRvd25sb2FkVGltZSA9ICgkRExbMF0qNjArJERMWzFdKSo2MCskRExbMl19DQogICAgICAgICAgICAyIHskSGFzaC5Eb3dubG9hZFRpbWUgPSAkRExbMF0qNjArJERMWzFdfQ0KICAgICAgICAgICAgZGVmYXVsdCB7JEhhc2guRG93bmxvYWRUaW1lID0gJERMWzBdfQ0KICAgICAgICB9DQogICAgICAgICRIYXNoLkRvd25sb2FkVGltZSAqPSAxMDAwDQogICAgfSBjYXRjaCB7fQ0KICAgIHJldHVybiAkSGFzaA0KfQoKZnVuY3Rpb24gSU4tQ29kZS1EZWJ1Zy1Db25zb2xlIHtXcml0ZS1Ib3N0IC1mIHllbGxvdyAnW0FQLUNPTVBJTEVSXSBNb2R1bGUgW0lOLUNvZGUtRGVidWctQ29uc29sZV0gZGlzYWJsZWQgZm9yIHRoaXMgcHJvZ3JhbSd9CgpTZXQtQWxpYXMgaW52IFByb2Nlc3MtVHJhbnNwYXJlbmN5ClNldC1BbGlhcyA/OiBJbnZva2UtVGVybmFyeQ==")))
# ========================================END=OF=COMPILER===========================================================|

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
    function List-New-Songs ([Switch]$Singles) {
        Try {
            $IE = Invoke-WebRequest (Proxy-Conv "http://www.songspk.link") -Headers $HD
            #$Table = ($IE.Document.getElementById('table195').rows | % {$_.outertext.replace('Movie Songs','').replace('Singles','').trim()})[2..1000]
            $Table = "songs-list1$(if ($Singles) {'1'})( ?)+$"
            $IE.ParsedHtml.getElementsByTagName("ul") | ? {$_.classname -match $Table} | % {
                if ($Singles) {
                    if ($PlainText) {$lb = "[";$rb = "]"}
                    @($_.childNodes)[1..100] | % {"{0}`t$lb{1}$rb" -f @($_.childNodes)[1,2].InnerText.trimStart()}
                } else {$_.getElementsByTagName("a") | % {$_.InnerText}}
#                } else {$_.innertext -replace "( ?)+Movie Songs|(^.+Category )","|" -split "\|" | % {$_ -replace "(?! )[\s]"}}
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
            <#@======================================================================================|.net:59;.eu:8;.us:18;soundz.mp3slash.net/320:1;320net.songspk.onl:3;.co:0;net.us:0;.in:7;z.eu:3;z.us:70;co.us:5;.com:2|=======================================================================================@#>
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
                foreach ($Suffix in "(Songs.PK)","[Songspk.LINK]","(Songspk.LINK)","(Songspk.LINK]") {
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
        $Filter = "(Songs\.pk|Songspk\.(name|LINK|SITE))"
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


# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gUHJvY2Vzcy1UcmFuc3BhcmVuY3kge3BhcmFtKFtBbGlhcygiVHJhbnNwYXJlbmN5IiwiSW52aXNpYmlsaXR5IiwiaSIsInQiKV1bVmFsaWRhdGVSYW5nZSgwLDEwMCldW2ludF0kVHJhbnM9MCwgW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSRQcm9jZXNzKQ0KDQogICAgaWYgKCRQcm9jZXNzIC1tYXRjaCAiXC5leGUkIikgeyRQcm9jZXNzID0gJFByb2Nlc3MucmVwbGFjZSgiLmV4ZSIsIiIpfQ0KICAgIFRyeSB7DQogICAgICAgIGlmICgkUHJvY2Vzcy5uYW1lKSB7JFByb2MgPSAkUHJvY2Vzcy5uYW1lfSBlbHNlIHskUHJvYyA9IChHZXQtUHJvY2VzcyAkUHJvY2VzcyAtRXJyb3JBY3Rpb24gU3RvcClbMF0ubmFtZX0NCiAgICB9IGNhdGNoIHsNCiAgICAgICAgaWYgKFtJbnRdOjpUcnlQYXJzZSgkUHJvY2VzcywgW3JlZl0zKSkgeyRQcm9jID0gKChHZXQtUHJvY2VzcyB8ID8geyRfLklEIC1lcSAkUHJvY2Vzc30pWzBdKS5uYW1lfQ0KICAgIH0NCiAgICBpZiAoJFByb2MgLW5vdE1hdGNoICJcLmV4ZSQiKSB7JFByb2MgPSAiJFByb2MuZXhlIn0NCiAgICBuaXJjbWQgd2luIHRyYW5zIHByb2Nlc3MgIiRQcm9jIiAoKDEwMC0kVHJhbnMpKjI1NS8xMDApIHwgT3V0LU51bGwNCn0KCmZ1bmN0aW9uIFByaW50LUxpc3Qge3BhcmFtKCR4LCBbU3dpdGNoXSRJblJlY3Vyc2UpDQoNCiAgICBpZiAoJHguY291bnQgLWxlIDEpIHtyZXR1cm4gPzooJEluUmVjdXJzZSl7JHh9eyJbJHhdIn19IGVsc2Ugew0KICAgICAgICByZXR1cm4gIlskKCgkeCB8ICUge1ByaW50LUxpc3QgJF8gLUluUmVjdXJzZX0pIC1qb2luICcsICcpXSINCiAgICB9DQp9CgpmdW5jdGlvbiBJbnZva2UtVGVybmFyeSB7cGFyYW0oW2Jvb2xdJGRlY2lkZXIsIFtzY3JpcHRibG9ja10kaWZ0cnVlLCBbc2NyaXB0YmxvY2tdJGlmZmFsc2UpDQoNCiAgICBpZiAoJGRlY2lkZXIpIHsgJiRpZnRydWV9IGVsc2UgeyAmJGlmZmFsc2UgfQ0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5saWI6KC4qKSIgIHskRmlsZT0kTWF0Y2hlc1sxXTskTGliPUFQLUNvbnZlcnRQYXRoICI8TElCPiI7KHRlc3QtcGF0aCAtdCBsZWFmICIkTGliXCRGaWxlIikgLW9yICh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZS5kbGwiKX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3NUaHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQoKZnVuY3Rpb24gV3JpdGUtQVAge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnLCBbU3dpdGNoXSRQYXNzVGhydSkNCg0KICAgIGlmICgkdGV4dC5jb3VudCAtZ3QgMSkge3JldHVybiAkVGV4dCB8P3siJF8ifXwgJSB7V3JpdGUtQVAgJF8gLU5vU2lnbjokTm9TaWduIC1QbGFpblRleHQ6JFBsYWluVGV4dCAtQWxpZ24gJEFsaWdufX0NCiAgICBpZiAoISR0ZXh0IC1vciAkdGV4dCAtbm90bWF0Y2ggIl4oPzxOTkw+eCk/KD88dD5cPiopKD88cz5bK1wtIVwqXSkoPzx3Pi4qKSIpIHtyZXR1cm4gJFRleHR9DQogICAgJHRiICA9ICIgICAgIiokTWF0Y2hlcy50Lmxlbmd0aDsNCiAgICAkQ29sID0gQHsnKyc9JzInOyctJz0nMTInOychJz0nMTQnOycqJz0nMyd9WygkU2lnbiA9ICRNYXRjaGVzLlMpXQ0KICAgIGlmICghJENvbCkge1Rocm93ICJJbmNvcnJlY3QgU2lnbiBbJFNpZ25dIFBhc3NlZCEifQ0KICAgICRTaWduID0gJChpZiAoISROb1NpZ24pIHsiWyRTaWduXSAifSBlbHNlIHsiIn0pDQogICAgQVAtUmVxdWlyZSAiZnVuY3Rpb246QWxpZ24tVGV4dCIge2Z1bmN0aW9uIEdsb2JhbDpBbGlnbi1UZXh0KCRhbGlnbiwkdGV4dCkgeyR0ZXh0fX0NCiAgICAkRGF0YSA9IEFsaWduLVRleHQgLUFsaWduICRBbGlnbiAiJHRiJFNpZ24kKCRNYXRjaGVzLlcpIg0KICAgIGlmICgkUGxhaW5UZXh0KSB7cmV0dXJuICREYXRhfQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZTokKFtib29sXSRNYXRjaGVzLk5OTCkgLWYgJENvbCAkRGF0YQ0KICAgIGlmICgkUGFzc1RocnUpIHskRGF0YX0NCn0KCmZ1bmN0aW9uIENsZWFyLUxpbmUgew0KICAgICRObSA9ICRIb3N0LlVJLlJhd1VJLldpbmRvd1NpemUuV2lkdGgtMQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZSAiJCgoImBiIiokTk0pKygiICIqJE5NKSsoImBiIiokTk0pKSINCn0KCmZ1bmN0aW9uIExvYWRpbmctTWVzc2FnZSB7DQogICAgW0NtZGxldEJpbmRpbmcoKV1wYXJhbShbU3RyaW5nXSRUZXh0ID0gIkxvYWRpbmciLCBbY2hhcl0kYyA9ICcuJyxbQWxpYXMoIkN5Y2xlcyIsIkN5Y2xlc1BlckJ1ZmZlciIpXVtkZWNpbWFsXSRDUEI9MTI1MDAsW1BhcmFtZXRlcihWYWx1ZUZyb21QaXBlbGluZT0kVHJ1ZSldJERhdGFTdHJlYW0sW1N3aXRjaF0kT3V0TnVsbCkNCiAgICBCZWdpbiB7JEJQID0gW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlO1tDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRGYWxzZTskRG90ID0gIiI7JENUID0gMDskQ1BCX05vcm09W01hdGhdOjpNYXgoJENQQiwxKTtXcml0ZS1Ib3N0IC1mIFllbGxvdyAtTm9OZXdMaW5lICRUZXh0O2lmICgkQ1BCIC1sdCAwKSB7dGhyb3cgIlZhbHVlIG9mIENQQiBjYW5ub3QgYmUgbGVzcy10aGFuLW9yLWVxIHRvIDAuIjtyZXR1cm59fQ0KICAgIFByb2Nlc3Mgew0KICAgICAgICAxLi5bTWF0aF06Ok1heCgoMS8kQ1BCKSwxKSB8ICUgew0KICAgICAgICAgICAgJExEID0gJERvdA0KICAgICAgICAgICAgJERvdCA9ICIgJGMiKihbU3lzdGVtLk1hdGhdOjpGbG9vcigkQ1QvJENQQl9Ob3JtKSU0KQ0KICAgICAgICAgICAgaWYgKCREb3QgLW5lICRMRCkgew0KICAgICAgICAgICAgICAgIFtDb25zb2xlXTo6Q3Vyc29yTGVmdCA9ICRUZXh0Lkxlbmd0aDtXcml0ZS1Ib3N0IC1mIFllbGxvdyAtTm9OZXdMaW5lICIkRG90JCgiICIqKDYtJERvdC5MZW5ndGgpKSINCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRDVCsrDQogICAgICAgICAgICBpZiAoJENQQiAtbHQgMSkge3NsZWVwIC1tIDIwMH0NCiAgICAgICAgfQ0KICAgICAgICBpZiAoISRPdXROdWxsKSB7JERhdGFTdHJlYW19DQogICAgfQ0KICAgIEVORCB7W0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEJwO3J2IERPVCxDVDtDbGVhci1MaW5lfQ0KfQoKZnVuY3Rpb24gQ29udmVydC1Ub0Jhc2U2NCB7cGFyYW0oW1N0cmluZ10kVGV4dCwgW1ZhbGlkYXRlU2V0KCJVVEY4IiwiVW5pY29kZSIpXVtTdHJpbmddJEVuY29kaW5nID0gIlVURjgiKQ0KDQogICAgW1N5c3RlbS5Db252ZXJ0XTo6VG9CYXNlNjRTdHJpbmcoW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6JEVuY29kaW5nLkdldEJ5dGVzKCRUZXh0KSkNCn0KCmZ1bmN0aW9uIFNpemUtQWRqIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW0RvdWJsZV0kQnl0ZXMsIFtTd2l0Y2hdJEJ5VGhvdXNhbmQpDQoNCiAgICAkQlQgPSA/OigkQnlUaG91c2FuZCl7MTAwMH17MTAyNH0NCiAgICAkU2l6ZXMgPSBAKCIiLCJLIiwiTSIsIkciLCJUIiwiUCIsIkUiLCJaIiwiWSIpDQogICAgJERlZyA9IFtNYXRoXTo6Rmxvb3IoW01hdGhdOjpMb2coJGJ5dGVzLCRCVCkpDQogICAgJERlZyA9ID86KCREZWcgLWdlICRTaXplcy5jb3VudCl7JFNpemVzLmNvdW50LTF9eyREZWd9DQogICAgJFJldCA9ICJ7MH0iIC1mIFtNYXRoXTo6Um91bmQoJEJ5dGVzLyhbTWF0aF06OlBvdygkQlQsJERlZykpLDIpDQogICAgaWYgKCRyZXQgLWVxICJOYU4iKSB7cmV0dXJuICRyZXR9DQogICAgUmV0dXJuICIkcmV0ICQoJFNpemVzWyREZWddKUIiDQp9CgpmdW5jdGlvbiBTdGFja2VyIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW09iamVjdFtdXSREYXRhLCBbSW50MzJdJFNwYWNlPSREX1NwYWNlLCBbU3dpdGNoXSRUcmltPSRmYWxzZSwgW0FsaWFzKCJUYWIiLCJCeVRhYiIsIlRhYmJlZCIsIkJUIildW1N3aXRjaF0kQnlUYWJiaW5nPSRmYWxzZSkNCg0KICAgIGlmICgkU3BhY2UgLWx0IDEpIHt0aHJvdyAiVGhlIFNwYWNlIFZhcmlhYmxlIGNhbm5vdCBiZSBsZXNzIHRoYW4gMSI7ZXhpdH0NCiAgICBbU3RyaW5nXSRCdWZmZXIgPSAiIjsgJGRpdiA9ICd8LShfKyMrXyktfCc7ICRESVZYID0gJ1tbWy98XytffFxdXV0nDQojICAgICREYXRhIHwgJSB7JEJ1ZmZlciArPSAiJCgiJF8iLnJlcGxhY2UoImBuIiwkRGl2KSkkRGl2In0NCiAgICAkRmlsZSA9ICIkZW52OnRlbXBcJChHZXQtUmFuZG9tKS1TdGFjay50eHQiDQogICAgJERhdGEgPiAkRmlsZQ0KICAgICRCdWZmZXIgPSBbSU8uRmlsZV06OlJlYWRBbGxMaW5lcygkZmlsZSkgLWpvaW4oJERpdikNCiAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCJgbiIsJERpdikNCiAgICBkZWwgLUZvcmNlICRGaWxlIHwgb3V0LW51bGwNCiAgICBpZiAoJEJ5VGFiYmluZykgew0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci50cmltKCREaXYpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKjMsJERpdikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiIqMiwkRGl2KQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2ICIsIiRESVZYIikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiIsImBuIikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERJVlgiLCIkRGl2ICIpDQogICAgICAgIFtTdHJpbmdbXV0gJEJ1ZmZlckMgPSAkQnVmZmVyLnNwbGl0KCJgbiIpDQogICAgfSBlbHNlIHsNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiIqJFNwYWNlLCJgbiIpDQogICAgICAgIFtPYmplY3RbXV0gJEJ1ZmZlckMgPSAkQnVmZmVyLnNwbGl0KCJgbiIpDQogICAgICAgIGlmICghKCRCdWZmZXJDWy0xXSkpIHskQnVmZmVyQyA9ICRCdWZmZXJDWzAuLigkQnVmZmVyQy5MZW5ndGgtMildfQ0KICAgIH0NCiAgICAkQnVmZmVyQ1swXSA9ICRCdWZmZXJDWzBdLnRyaW1zdGFydCgiJERpdiIpDQogICAgJEJ1ZmZlckMgPSAkQnVmZmVyQyB8ICUge2lmICgkdHJpbSkgeyRfLnRyaW0oJERpdil9IGVsc2UgeyRffX0gfCAlIHskXy5yZXBsYWNlKCREaXYsImBuIil9IHwgJSB7JF99DQogICAgcmV0dXJuICRCdWZmZXJDDQojICAgIFtPYmplY3RbXVtdXSAkQnVmZmVyRjsNCiMgICAgZm9yICgkaSA9IDA7ICRpIC1sdCAkQnVmZmVyQy5jb3VudDskaSsrKSB7DQojICAgICAgICAkRFRTdHJlYW0gPSAoJEJ1ZmZlckNbJGldKS5zcGxpdCgiYG4iKQ0KIyAgICAgICAgJEJ1ZmZlckYgKz0gQCgkRFRTdHJlYW1bMF0pDQojICAgICAgICBmb3IgKCRqID0gMTskaiAtbHQgJERUU3RyZWFtLmNvdW50OyAkaisrKSB7DQojICAgICAgICAgICAgJEJ1ZmZlckZbJEldICs9ICREVFN0cmVhbVskal0NCiMjICAgICAgICAgICAgIi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0iDQojICAgICAgICB9DQojIyAgICAgICAgInh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHgiDQojICAgIH0NCiMjICAgIFJldHVybiAkQnVmZmVyRg0KfQoKZnVuY3Rpb24gVi1TdGFja2VyIHsNCiAgICBbQ21kbGV0QmluZGluZygpXQ0KICAgIHBhcmFtKFtQYXJhbWV0ZXIoVmFsdWVGcm9tUGlwZWxpbmU9JHRydWUsTWFuZGF0b3J5PSR0cnVlKV0kRGF0YSxbaW50XSRTUEMgPSAyKQ0KICAgIGJlZ2luICAgeyRXb3JkUmF0aW9FcHNpbG9uID0gLjV9DQogICAgUHJvY2VzcyB7JEREICs9ICwkRGF0YX0NCiAgICBFbmQgew0KICAgICAgICBbT2JqZWN0W11dJERhdGEgPSBTdGFja2VyIChGbGF0dGVuICRERCkNCiAgICAgICAgJExlbiAgICAgICAgICAgID0gQCgtMSwtMSkNCiAgICAgICAgZm9yICgkRD0wOyREIC1sdCAkRGF0YS5jb3VudDskRCsrKSB7DQogICAgICAgICAgICBpZiAoJERhdGFbJERdLkxlbmd0aCAtZ3QgJExlblswXSkgeyRMZW4gPSAoJERhdGFbJERdLkxlbmd0aCwgJEQpfQ0KICAgICAgICB9DQogICAgICAgICREYXRhICAgICAgID0gKCgkRGF0YSwiIiB8ICUgeyRffSlbJExlblsxXV0gLXNwbGl0ICJgbiIpLnRyaW1TdGFydCgpDQogICAgICAgIFtvYmplY3RbXV0kQ29sbW4gICAgICA9ICREYXRhWzBdIC1zcGxpdCAoIiAiKiRTUEMpIHwgJSB7JF8udHJpbSgpfSB8ID8geyRffQ0KICAgICAgICAkQ29sbW5Qb3MgICA9ICRDb2xtbiB8ICUgeyREYXRhWzBdLkluZGV4T2YoJF8pfQ0KICAgICAgICAkU3RhY2tUYWJsZSA9IE5ldy1PYmplY3Qgc3lzdGVtLkRhdGEuRGF0YVRhYmxlICJWZXJ0aWNhbCBTdGFja3MiDQogICAgICAgIGZvcmVhY2ggKCRwIGluICRDb2xtbikgew0KICAgICAgICAgICAgJFN0YWNrVGFibGUuY29sdW1ucy5hZGQoKE5ldy1PYmplY3Qgc3lzdGVtLkRhdGEuRGF0YUNvbHVtbiAkcCwoW3N0cmluZ10pKSkNCiAgICAgICAgfQ0KICAgICAgICAkRGF0YVsxLi4oJERhdGEuTGVuZ3RoLTEpXSB8ID8geyRfLnRyaW0oIj0iLCItIiwiICIpfSB8ICUgew0KICAgICAgICAgICAgJFQgPSBAKCkNCiAgICAgICAgICAgICRETGluZSA9ICRfDQogICAgICAgICAgICBmb3JlYWNoICgkcCBpbiAoW0NvbnNvbGVdOjpCdWZmZXJXaWR0aC8kQ29sbW4ubGVuZ3RoKS4uJFNQQykgew0KICAgICAgICAgICAgICAgIFtvYmplY3RbXV0kVCA9ICRETGluZSAtc3BsaXQgKCIgIiokcCkgfCA/IHskXy50cmltKCIgIiwiLSIpfQ0KICAgICAgICAgICAgICAgIGlmICgkdC5jb3VudCAtZXEgJENvbG1uLmNvdW50KSB7YnJlYWt9DQogICAgICAgICAgICB9DQogICAgICAgICAgICBpZiAoJHQuY291bnQgLW5lICRDb2xtbi5jb3VudCkgew0KICAgICAgICAgICAgICAgICRUID0gMS4uJENvbG1uLmNvdW50IHwgJSB7IiJ9DQogICAgICAgICAgICAgICAgJFRtcCA9ICRETGluZSAtc3BsaXQgKCIgIiokU1BDKSB8ID8geyRfLnRyaW0oIiAiLCItIil9DQogICAgICAgICAgICAgICAgJFRtcEluZGV4ID0gMA0KICAgICAgICAgICAgICAgIDAuLigkVC5jb3VudC0xKSB8ICUgew0KICAgICAgICAgICAgICAgICAgICBpZiAoW01hdGhdOjpBYnMoJERMaW5lLkluZGV4T2YoJFRtcFskVG1wSW5kZXhdKSAtICRDb2xtblBvc1skX10pIC1sdCBbTWF0aF06OkNlaWxpbmcoJFRtcFskVG1wSW5kZXhdLkxlbmd0aCokV29yZFJhdGlvRXBzaWxvbikpIHskVFskX10gPSAkVG1wWyRUbXBJbmRleF07JFRtcEluZGV4Kyt9DQogICAgICAgICAgICAgICAgfQ0KICAgICAgICAgICAgICAgIGlmICgkVG1wSW5kZXggLWxlICgkVG1wLmNvdW50LTEpKSB7JFRbJFRtcEluZGV4XSA9ICRUbXBbKCRUbXBJbmRleCkuLigkVG1wLmNvdW50LTEpXSAtam9pbigifCIpfQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgJHJ3ID0gJFN0YWNrVGFibGUuTmV3Um93KCkNCiAgICAgICAgICAgIGZvcmVhY2ggKCRSVCBpbiAoMC4uKCRDb2xtbi5jb3VudC0xKSkpIHsNCiAgICAgICAgICAgICAgICAkcncuKCRDb2xtblskUnRdKSA9ICgkVFskcnRdKyIgIikudHJpbSgpDQogICAgICAgICAgICB9DQogICAgICAgICAgICAkU3RhY2tUYWJsZS5Sb3dzLkFkZCgkcncpDQogICAgICAgIH0NCiAgICAgICAgcmV0dXJuICRTdGFja1RhYmxlDQogICAgfQ0KfQoKZnVuY3Rpb24gVGltZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRNaWxsaXNlY29uZHMsICRJbnB1dFR5cGUgPSAiTWlsbGlzZWNvbmRzIiwgW1N3aXRjaF0kRnVsbEZvcm0pDQoNCiAgICBpZiAoJE1pbGxpc2Vjb25kcyAtZXEgMCkge3JldHVybiAiMCAkKD86KCRmdWxsRm9ybSl7Ik1pbGxpc2Vjb25kcyJ9eyJtcyJ9KSJ9DQogICAgaWYgKCRJbnB1dFR5cGUgLW5lICIiKSB7DQogICAgICAgICRDb252ID0gQHsiTWlsbGlzZWNvbmRzIiA9IDF9DQogICAgICAgICRDb252ICs9IEB7IlNlY29uZHMiID0gMTAwMCokQ29udi5NaWxsaXNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7Ik1pbnV0ZXMiID0gNjAqJENvbnYuU2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiSG91cnMiID0gNjAqJENvbnYuTWludXRlc30NCiAgICAgICAgJENvbnYgKz0gQHsiRGF5cyIgPSAyNCokQ29udi5Ib3Vyc30NCiAgICAgICAgJENvbnYgKz0gQHsiWWVhcnMiID0gMzY1LjI1KiRDb252LkRheXN9DQogICAgICAgIGlmICgkQ29udi5Db250YWluc0tleSgkSW5wdXRUeXBlKSkgeyRNaWxsaXNlY29uZHMgKj0gJENvbnYuJElucHV0VHlwZX0NCiAgICB9DQogICAgJFNpZ24gID0gPzooJE1pbGxpc2Vjb25kcyAtbHQgMCl7LTF9ezF9DQogICAgJE1pbGxpc2Vjb25kcyAqPSAkU2lnbg0KICAgICRTcGFuICA9IE5ldy1UaW1lU3BhbiAoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApICQoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApLkFkZE1pbGxpc2Vjb25kcygkTWlsbGlzZWNvbmRzKQ0KICAgICRQcm9wcyA9ICgkc3BhbiB8IGdtIHwgPyB7JF8gLW1hdGNoICJUb3RhbCJ9KS5uYW1lDQogICAgJFNpemVzID0gPzooJEZ1bGxGb3JtKXskUHJvcHMgfCAlIHskXy5zdWJzdHJpbmcoNSl9fXtAKCJkYXlzIiwiaHJzIiwibXMiLCJtaW4iLCJzZWMiKX0NCiAgICAkU2l6ZXMgPSAkU2l6ZXNbMCwxLDMsNCwyXQ0KICAgICRQcm9wcyA9ICRQcm9wc1swLDEsMyw0LDJdDQogICAgJERlZyA9IC0xDQogICAgZG8gew0KICAgICAgICAkREVHKysNCiAgICB9IHdoaWxlIChbU3lzdGVtLk1hdGhdOjpSb3VuZCgkU3Bhbi4oJHByb3BzWyRkZWddKSwyKSAtbHQgMSkNCiAgICAkYW5zID0gJFNwYW4uKCRwcm9wc1skZGVnXSk7JHVuaXQgPSAkU2l6ZXNbJERlZ10NCiAgICBpZiAoJERFRyAtZXEgMCAtYW5kICRTcGFuLigkcHJvcHNbJGRlZ10pIC1nZSAzNjUuMjUpIHskYW5zIC89IDM2NS4yNTskdW5pdD0/OigkRnVsbEZvcm0peyJZZWFycyJ9eyJ5ciJ9fQ0KICAgICRSZXR1cm5hID0gIiQoJFNpZ24qW1N5c3RlbS5NYXRoXTo6Um91bmQoJGFucywyKSkiLCIkdW5pdCINCiAgICAkUmV0dXJuYVsxXSA9ID86KCRSZXR1cm5hWzBdIC1lcSAxKXskUmV0dXJuYVsxXS50cmltRW5kKCJzIil9eyRSZXR1cm5hWzFdfQ0KICAgIGlmICgkUmV0dXJuYVsxXSAtZXEgIm0iKSB7JFJldHVybmFbMV0gKz0gInMifQ0KICAgIFJldHVybiAoJFJldHVybmEgLWpvaW4oIiAiKSkNCn0KCmZ1bmN0aW9uIEdldC1BeGVsLURvd25sb2FkLURhdGEge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kRGF0YSkNCg0KICAgIGlmICghJERhdGEpIHtyZXR1cm59DQogICAgdHJ5IHsNCiAgICAgICAgJEhhc2ggPSBAe30NCiAgICAgICAgJEhhc2guVVJMICAgPSAoJERhdGFbMF0uc3BsaXQoIjoiKVsxLi4xMDAwXSAtam9pbigiOiIpKS50cmltKCkNCiAgICAgICAgJEhhc2guU2l6ZSA9ICREYXRhWzFdLnNwbGl0KCI6IilbMV0udHJpbSgpLnNwbGl0KCIgIilbMF0NCiAgICAgICAgJEhhc2guRmlsZSAgPSAkRGF0YVsyXS5zdWJzdHJpbmcoMTkpLnRyaW0oKQ0KICAgICAgICAkVFIgPSAkRGF0YVstMV0uc3BsaXQoIiAiKQ0KICAgICAgICAkSGFzaC5Eb3dubG9hZFNwZWVkID0gIiQoJFRSWy0yLC0xXS50cmltKCIoIiwiKSIpKSINCiAgICAgICAgJERMID0gJFRSWzRdLnNwbGl0KCI6IikgfCAlIHtbaW50XSRffQ0KICAgICAgICBzd2l0Y2ggKCRETC5jb3VudCkgew0KICAgICAgICAgICAgMyB7JEhhc2guRG93bmxvYWRUaW1lID0gKCRETFswXSo2MCskRExbMV0pKjYwKyRETFsyXX0NCiAgICAgICAgICAgIDIgeyRIYXNoLkRvd25sb2FkVGltZSA9ICRETFswXSo2MCskRExbMV19DQogICAgICAgICAgICBkZWZhdWx0IHskSGFzaC5Eb3dubG9hZFRpbWUgPSAkRExbMF19DQogICAgICAgIH0NCiAgICAgICAgJEhhc2guRG93bmxvYWRUaW1lICo9IDEwMDANCiAgICB9IGNhdGNoIHt9DQogICAgcmV0dXJuICRIYXNoDQp9CgpmdW5jdGlvbiBJTi1Db2RlLURlYnVnLUNvbnNvbGUge1dyaXRlLUhvc3QgLWYgeWVsbG93ICdbQVAtQ09NUElMRVJdIE1vZHVsZSBbSU4tQ29kZS1EZWJ1Zy1Db25zb2xlXSBkaXNhYmxlZCBmb3IgdGhpcyBwcm9ncmFtJ30KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc1RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJebGliOiguKikiICB7JEZpbGU9JE1hdGNoZXNbMV07JExpYj1BUC1Db252ZXJ0UGF0aCAiPExJQj4iOyh0ZXN0LXBhdGggLXQgbGVhZiAiJExpYlwkRmlsZSIpIC1vciAodGVzdC1wYXRoIC10IGxlYWYgIiRMaWJcJEZpbGUuZGxsIil9DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzVGhydSkge3JldHVybiAkU3RhdH0NCn0KClNldC1BbGlhcyBpbnYgUHJvY2Vzcy1UcmFuc3BhcmVuY3kKU2V0LUFsaWFzID86IEludm9rZS1UZXJuYXJ5")))
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
    [Switch]$DontCleanTemp,
    [Alias("d")][Switch]$Dbg,
    [Switch]$WhatIf,
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
            <#@================================================================|.net:42;.eu:8;.us:18;.co:0;net.us:0;.in:7;z.eu:3;z.us:44;co.us:5;.com:1|================================================================@#>
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
                foreach ($Suffix in "(Songs.PK)","[Songspk.LINK]","(Songspk.LINK)") {
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
            foreach ($p in ($Year+1)..($Year-[Math]::Abs($PersistYears))) {
                foreach ($Symbol in "-","_") {
                    $Schemas = ?:($p -lt 2015){"www.songspk.link/indian-mp3-songs","www.songspk.name/indian"}{"albums.songspk.link/indian_songs"}
                    foreach ($Schema in $Schemas) {
                        $name = ?:($p -lt 2015){"$Movie-$p-mp3-songs"}{"$Movie-mp3-songs"}
                        try {
                            if ($Dbg) {Write-AP ">>*Attempting Schema [$(Proxy-Conv "http://$Schema/$($name.replace('-',$Symbol))$(?:($p -lt 2015){'.html'}{})".toLower())]"}
                            $Crawler = iwr (Proxy-Conv "http://$Schema/$($name.replace('-',$Symbol))$(?:($p -lt 2015){'.html'}{})".toLower()) -Headers $HD
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
        $Filter = "(Songs\.pk|Songspk\.(name|LINK))"
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


# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gUHJpbnQtTGlzdCB7cGFyYW0oJHgsIFtTd2l0Y2hdJEluUmVjdXJzZSkNCg0KICAgIGlmICgkeC5jb3VudCAtbGUgMSkge3JldHVybiA/OigkSW5SZWN1cnNlKXskeH17IlskeF0ifX0gZWxzZSB7DQogICAgICAgIHJldHVybiAiWyQoKCR4IHwgJSB7UHJpbnQtTGlzdCAkXyAtSW5SZWN1cnNlfSkgLWpvaW4gJywgJyldIg0KICAgIH0NCn0KCmZ1bmN0aW9uIFYtU3RhY2tlciB7DQogICAgW0NtZGxldEJpbmRpbmcoKV0NCiAgICBwYXJhbShbUGFyYW1ldGVyKFZhbHVlRnJvbVBpcGVsaW5lPSR0cnVlLE1hbmRhdG9yeT0kdHJ1ZSldJERhdGEsW2ludF0kU1BDID0gMikNCiAgICBiZWdpbiAgIHskV29yZFJhdGlvRXBzaWxvbiA9IC41fQ0KICAgIFByb2Nlc3MgeyRERCArPSAsJERhdGF9DQogICAgRW5kIHsNCiAgICAgICAgW09iamVjdFtdXSREYXRhID0gU3RhY2tlciAoRmxhdHRlbiAkREQpDQogICAgICAgICRMZW4gICAgICAgICAgICA9IEAoLTEsLTEpDQogICAgICAgIGZvciAoJEQ9MDskRCAtbHQgJERhdGEuY291bnQ7JEQrKykgew0KICAgICAgICAgICAgaWYgKCREYXRhWyREXS5MZW5ndGggLWd0ICRMZW5bMF0pIHskTGVuID0gKCREYXRhWyREXS5MZW5ndGgsICREKX0NCiAgICAgICAgfQ0KICAgICAgICAkRGF0YSAgICAgICA9ICgoJERhdGEsIiIgfCAlIHskX30pWyRMZW5bMV1dIC1zcGxpdCAiYG4iKS50cmltU3RhcnQoKQ0KICAgICAgICBbb2JqZWN0W11dJENvbG1uICAgICAgPSAkRGF0YVswXSAtc3BsaXQgKCIgIiokU1BDKSB8ICUgeyRfLnRyaW0oKX0gfCA/IHskX30NCiAgICAgICAgJENvbG1uUG9zICAgPSAkQ29sbW4gfCAlIHskRGF0YVswXS5JbmRleE9mKCRfKX0NCiAgICAgICAgJFN0YWNrVGFibGUgPSBOZXctT2JqZWN0IHN5c3RlbS5EYXRhLkRhdGFUYWJsZSAiVmVydGljYWwgU3RhY2tzIg0KICAgICAgICBmb3JlYWNoICgkcCBpbiAkQ29sbW4pIHsNCiAgICAgICAgICAgICRTdGFja1RhYmxlLmNvbHVtbnMuYWRkKChOZXctT2JqZWN0IHN5c3RlbS5EYXRhLkRhdGFDb2x1bW4gJHAsKFtzdHJpbmddKSkpDQogICAgICAgIH0NCiAgICAgICAgJERhdGFbMS4uKCREYXRhLkxlbmd0aC0xKV0gfCA/IHskXy50cmltKCI9IiwiLSIsIiAiKX0gfCAlIHsNCiAgICAgICAgICAgICRUID0gQCgpDQogICAgICAgICAgICAkRExpbmUgPSAkXw0KICAgICAgICAgICAgZm9yZWFjaCAoJHAgaW4gKFtDb25zb2xlXTo6QnVmZmVyV2lkdGgvJENvbG1uLmxlbmd0aCkuLiRTUEMpIHsNCiAgICAgICAgICAgICAgICBbb2JqZWN0W11dJFQgPSAkRExpbmUgLXNwbGl0ICgiICIqJHApIHwgPyB7JF8udHJpbSgiICIsIi0iKX0NCiAgICAgICAgICAgICAgICBpZiAoJHQuY291bnQgLWVxICRDb2xtbi5jb3VudCkge2JyZWFrfQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgaWYgKCR0LmNvdW50IC1uZSAkQ29sbW4uY291bnQpIHsNCiAgICAgICAgICAgICAgICAkVCA9IDEuLiRDb2xtbi5jb3VudCB8ICUgeyIifQ0KICAgICAgICAgICAgICAgICRUbXAgPSAkRExpbmUgLXNwbGl0ICgiICIqJFNQQykgfCA/IHskXy50cmltKCIgIiwiLSIpfQ0KICAgICAgICAgICAgICAgICRUbXBJbmRleCA9IDANCiAgICAgICAgICAgICAgICAwLi4oJFQuY291bnQtMSkgfCAlIHsNCiAgICAgICAgICAgICAgICAgICAgaWYgKFtNYXRoXTo6QWJzKCRETGluZS5JbmRleE9mKCRUbXBbJFRtcEluZGV4XSkgLSAkQ29sbW5Qb3NbJF9dKSAtbHQgW01hdGhdOjpDZWlsaW5nKCRUbXBbJFRtcEluZGV4XS5MZW5ndGgqJFdvcmRSYXRpb0Vwc2lsb24pKSB7JFRbJF9dID0gJFRtcFskVG1wSW5kZXhdOyRUbXBJbmRleCsrfQ0KICAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgICAgICBpZiAoJFRtcEluZGV4IC1sZSAoJFRtcC5jb3VudC0xKSkgeyRUWyRUbXBJbmRleF0gPSAkVG1wWygkVG1wSW5kZXgpLi4oJFRtcC5jb3VudC0xKV0gLWpvaW4oInwiKX0NCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRydyA9ICRTdGFja1RhYmxlLk5ld1JvdygpDQogICAgICAgICAgICBmb3JlYWNoICgkUlQgaW4gKDAuLigkQ29sbW4uY291bnQtMSkpKSB7DQogICAgICAgICAgICAgICAgJHJ3LigkQ29sbW5bJFJ0XSkgPSAoJFRbJHJ0XSsiICIpLnRyaW0oKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgJFN0YWNrVGFibGUuUm93cy5BZGQoJHJ3KQ0KICAgICAgICB9DQogICAgICAgIHJldHVybiAkU3RhY2tUYWJsZQ0KICAgIH0NCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc3RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzdGhydSkge3JldHVybiAkU3RhdH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnKQ0KDQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW1hdGNoICJeW1wrXC1cIVwqeFw+IF0rJCIpIHtyZXR1cm59DQogICAgJGFjYyAgPSBAKCgnKycsJzInKSwoJy0nLCcxMicpLCgnIScsJzE0JyksKCcqJywnMycpKQ0KICAgICR0YiAgID0gJyc7JGZ1bmMgICA9ICRmYWxzZQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJ3gnKSB7JGZ1bmMgPSAkdHJ1ZTsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJz4nKSB7JHRiICs9ICIgICAgIjsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgICRTaWduID0gJFRleHQuY2hhcnMoMCkNCiAgICAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCkucmVwbGFjZSgnL3hcJywnJykucmVwbGFjZSgnWy5dJywnW0N1cnJlbnQgRGlyZWN0b3J5XScpDQogICAgJHZlcnMgPSAkZmFsc2UNCiAgICBmb3JlYWNoICgkYXIgaW4gJGFjYykge2lmICgkYXJbMF0gLWVxICRzaWduKSB7JHZlcnMgPSAkdHJ1ZTsgJGNsciA9ICRhclsxXTsgJFNpZ24gPSAiWyR7U2lnbn1dICJ9fQ0KICAgIGlmICghJHZlcnMpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gQWxpZ24tVGV4dCgkYWxpZ24sJHRleHQpIHskdGV4dH19DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gJHRiJChpZiAoISROb1NpZ24pIHskU2lnbn0pJFRleHQNCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JGZ1bmMgLWYgJGNsciAkRGF0YQ0KfQoKZnVuY3Rpb24gQ2xlYXItTGluZSB7DQogICAgJE5tID0gJEhvc3QuVUkuUmF3VUkuV2luZG93U2l6ZS5XaWR0aC0xDQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lICIkKCgiYGIiKiROTSkrKCIgIiokTk0pKygiYGIiKiROTSkpIg0KfQoKZnVuY3Rpb24gTG9hZGluZy1NZXNzYWdlIHsNCiAgICBbQ21kbGV0QmluZGluZygpXXBhcmFtKFtTdHJpbmddJFRleHQgPSAiTG9hZGluZyIsIFtjaGFyXSRjID0gJy4nLFtBbGlhcygiQ3ljbGVzIiwiQ3ljbGVzUGVyQnVmZmVyIildW2RlY2ltYWxdJENQQj0xMjUwMCxbUGFyYW1ldGVyKFZhbHVlRnJvbVBpcGVsaW5lPSRUcnVlKV0kRGF0YVN0cmVhbSxbU3dpdGNoXSRPdXROdWxsKQ0KICAgIEJlZ2luIHskQlAgPSBbQ29uc29sZV06OkN1cnNvclZpc2libGU7W0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEZhbHNlOyREb3QgPSAiIjskQ1QgPSAwOyRDUEJfTm9ybT1bTWF0aF06Ok1heCgkQ1BCLDEpO1dyaXRlLUhvc3QgLWYgWWVsbG93IC1Ob05ld0xpbmUgJFRleHQ7aWYgKCRDUEIgLWx0IDApIHt0aHJvdyAiVmFsdWUgb2YgQ1BCIGNhbm5vdCBiZSBsZXNzLXRoYW4tb3ItZXEgdG8gMC4iO3JldHVybn19DQogICAgUHJvY2VzcyB7DQogICAgICAgIDEuLltNYXRoXTo6TWF4KCgxLyRDUEIpLDEpIHwgJSB7DQogICAgICAgICAgICAkTEQgPSAkRG90DQogICAgICAgICAgICAkRG90ID0gIiAkYyIqKFtTeXN0ZW0uTWF0aF06OkZsb29yKCRDVC8kQ1BCX05vcm0pJTQpDQogICAgICAgICAgICBpZiAoJERvdCAtbmUgJExEKSB7DQogICAgICAgICAgICAgICAgW0NvbnNvbGVdOjpDdXJzb3JMZWZ0ID0gJFRleHQuTGVuZ3RoO1dyaXRlLUhvc3QgLWYgWWVsbG93IC1Ob05ld0xpbmUgIiREb3QkKCIgIiooNi0kRG90Lkxlbmd0aCkpIg0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgJENUKysNCiAgICAgICAgICAgIGlmICgkQ1BCIC1sdCAxKSB7c2xlZXAgLW0gMjAwfQ0KICAgICAgICB9DQogICAgICAgIGlmICghJE91dE51bGwpIHskRGF0YVN0cmVhbX0NCiAgICB9DQogICAgRU5EIHtbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkQnA7cnYgRE9ULENUO0NsZWFyLUxpbmV9DQp9CgpmdW5jdGlvbiBDb252ZXJ0LVRvQmFzZTY0IHtwYXJhbShbU3RyaW5nXSRUZXh0LCBbVmFsaWRhdGVTZXQoIlVURjgiLCJVbmljb2RlIildW1N0cmluZ10kRW5jb2RpbmcgPSAiVVRGOCIpDQoNCiAgICBbU3lzdGVtLkNvbnZlcnRdOjpUb0Jhc2U2NFN0cmluZyhbU3lzdGVtLlRleHQuRW5jb2RpbmddOjokRW5jb2RpbmcuR2V0Qnl0ZXMoJFRleHQpKQ0KfQoKZnVuY3Rpb24gU2l6ZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRCeXRlcywgW1N3aXRjaF0kQnlUaG91c2FuZCkNCg0KICAgICRCVCA9ID86KCRCeVRob3VzYW5kKXsxMDAwfXsxMDI0fQ0KICAgICRTaXplcyA9IEAoIiIsIksiLCJNIiwiRyIsIlQiLCJQIiwiRSIsIloiLCJZIikNCiAgICAkRGVnID0gW1N5c3RlbS5NYXRoXTo6Rmxvb3IoW01hdGhdOjpMb2coJGJ5dGVzLCRCVCkpDQogICAgJERlZyA9ID86KCREZWcgLWdlICRTaXplcy5jb3VudCl7JFNpemVzLmNvdW50LTF9eyREZWd9DQogICAgJFJldCA9ICJ7MH0iIC1mIFtTeXN0ZW0uTWF0aF06OlJvdW5kKCRCeXRlcy8oW01hdGhdOjpQb3coJEJULCREZWcpKSwyKQ0KICAgIGlmICgkcmV0IC1lcSAiTmFOIikge3JldHVybiAkcmV0fQ0KICAgIFJldHVybiAiJHJldCAkKCRTaXplc1skRGVnXSlCIg0KfQoKZnVuY3Rpb24gU3RhY2tlciB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtPYmplY3RbXV0kRGF0YSwgW0ludDMyXSRTcGFjZT0kRF9TcGFjZSwgW1N3aXRjaF0kVHJpbT0kZmFsc2UsIFtBbGlhcygiVGFiIiwiQnlUYWIiLCJUYWJiZWQiLCJCVCIpXVtTd2l0Y2hdJEJ5VGFiYmluZz0kZmFsc2UpDQoNCiAgICBpZiAoJFNwYWNlIC1sdCAxKSB7dGhyb3cgIlRoZSBTcGFjZSBWYXJpYWJsZSBjYW5ub3QgYmUgbGVzcyB0aGFuIDEiO2V4aXR9DQogICAgW1N0cmluZ10kQnVmZmVyID0gIiI7ICRkaXYgPSAnfC0oXysjK18pLXwnOyAkRElWWCA9ICdbW1svfF8rX3xcXV1dJw0KIyAgICAkRGF0YSB8ICUgeyRCdWZmZXIgKz0gIiQoIiRfIi5yZXBsYWNlKCJgbiIsJERpdikpJERpdiJ9DQogICAgJEZpbGUgPSAiJGVudjp0ZW1wXCQoR2V0LVJhbmRvbSktU3RhY2sudHh0Ig0KICAgICREYXRhID4gJEZpbGUNCiAgICAkQnVmZmVyID0gW0lPLkZpbGVdOjpSZWFkQWxsTGluZXMoJGZpbGUpIC1qb2luKCREaXYpDQogICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiYG4iLCREaXYpDQogICAgZGVsIC1Gb3JjZSAkRmlsZSB8IG91dC1udWxsDQogICAgaWYgKCRCeVRhYmJpbmcpIHsNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIudHJpbSgkRGl2KQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2IiozLCREaXYpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKjIsJERpdikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiAiLCIkRElWWCIpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiLCJgbiIpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiRESVZYIiwiJERpdiAiKQ0KICAgICAgICBbU3RyaW5nW11dICRCdWZmZXJDID0gJEJ1ZmZlci5zcGxpdCgiYG4iKQ0KICAgIH0gZWxzZSB7DQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKiRTcGFjZSwiYG4iKQ0KICAgICAgICBbT2JqZWN0W11dICRCdWZmZXJDID0gJEJ1ZmZlci5zcGxpdCgiYG4iKQ0KICAgICAgICBpZiAoISgkQnVmZmVyQ1stMV0pKSB7JEJ1ZmZlckMgPSAkQnVmZmVyQ1swLi4oJEJ1ZmZlckMuTGVuZ3RoLTIpXX0NCiAgICB9DQogICAgJEJ1ZmZlckNbMF0gPSAkQnVmZmVyQ1swXS50cmltc3RhcnQoIiREaXYiKQ0KICAgICRCdWZmZXJDID0gJEJ1ZmZlckMgfCAlIHtpZiAoJHRyaW0pIHskXy50cmltKCREaXYpfSBlbHNlIHskX319IHwgJSB7JF8ucmVwbGFjZSgkRGl2LCJgbiIpfSB8ICUgeyRffQ0KICAgIHJldHVybiAkQnVmZmVyQw0KIyAgICBbT2JqZWN0W11bXV0gJEJ1ZmZlckY7DQojICAgIGZvciAoJGkgPSAwOyAkaSAtbHQgJEJ1ZmZlckMuY291bnQ7JGkrKykgew0KIyAgICAgICAgJERUU3RyZWFtID0gKCRCdWZmZXJDWyRpXSkuc3BsaXQoImBuIikNCiMgICAgICAgICRCdWZmZXJGICs9IEAoJERUU3RyZWFtWzBdKQ0KIyAgICAgICAgZm9yICgkaiA9IDE7JGogLWx0ICREVFN0cmVhbS5jb3VudDsgJGorKykgew0KIyAgICAgICAgICAgICRCdWZmZXJGWyRJXSArPSAkRFRTdHJlYW1bJGpdDQojIyAgICAgICAgICAgICItLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIg0KIyAgICAgICAgfQ0KIyMgICAgICAgICJ4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4Ig0KIyAgICB9DQojIyAgICBSZXR1cm4gJEJ1ZmZlckYNCn0KCmZ1bmN0aW9uIElOLUNvZGUtRGVidWctQ29uc29sZSB7V3JpdGUtSG9zdCAtZiB5ZWxsb3cgJ1tBUC1DT01QSUxFUl0gTW9kdWxlIFtJTi1Db2RlLURlYnVnLUNvbnNvbGVdIGRpc2FibGVkIGZvciB0aGlzIHByb2dyYW0nfQoKZnVuY3Rpb24gVGltZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRNaWxsaXNlY29uZHMsICRJbnB1dFR5cGUgPSAiTWlsbGlzZWNvbmRzIiwgW1N3aXRjaF0kRnVsbEZvcm0pDQoNCiAgICBpZiAoJE1pbGxpc2Vjb25kcyAtZXEgMCkge3JldHVybiAiMCAkKD86KCRmdWxsRm9ybSl7Ik1pbGxpc2Vjb25kcyJ9eyJtcyJ9KSJ9DQogICAgaWYgKCRJbnB1dFR5cGUgLW5lICIiKSB7DQogICAgICAgICRDb252ID0gQHsiTWlsbGlzZWNvbmRzIiA9IDF9DQogICAgICAgICRDb252ICs9IEB7IlNlY29uZHMiID0gMTAwMCokQ29udi5NaWxsaXNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7Ik1pbnV0ZXMiID0gNjAqJENvbnYuU2Vjb25kc30NCiAgICAgICAgJENvbnYgKz0gQHsiSG91cnMiID0gNjAqJENvbnYuTWludXRlc30NCiAgICAgICAgJENvbnYgKz0gQHsiRGF5cyIgPSAyNCokQ29udi5Ib3Vyc30NCiAgICAgICAgJENvbnYgKz0gQHsiWWVhcnMiID0gMzY1LjI1KiRDb252LkRheXN9DQogICAgICAgIGlmICgkQ29udi5Db250YWluc0tleSgkSW5wdXRUeXBlKSkgeyRNaWxsaXNlY29uZHMgKj0gJENvbnYuJElucHV0VHlwZX0NCiAgICB9DQogICAgJFNpZ24gID0gPzooJE1pbGxpc2Vjb25kcyAtbHQgMCl7LTF9ezF9DQogICAgJE1pbGxpc2Vjb25kcyAqPSAkU2lnbg0KICAgICRTcGFuICA9IE5ldy1UaW1lU3BhbiAoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApICQoR2V0LURhdGUgLU1pbGxpc2Vjb25kIDApLkFkZE1pbGxpc2Vjb25kcygkTWlsbGlzZWNvbmRzKQ0KICAgICRQcm9wcyA9ICgkc3BhbiB8IGdtIHwgPyB7JF8gLW1hdGNoICJUb3RhbCJ9KS5uYW1lDQogICAgJFNpemVzID0gPzooJEZ1bGxGb3JtKXskUHJvcHMgfCAlIHskXy5zdWJzdHJpbmcoNSl9fXtAKCJkYXlzIiwiaHJzIiwibXMiLCJtaW4iLCJzZWMiKX0NCiAgICAkU2l6ZXMgPSAkU2l6ZXNbMCwxLDMsNCwyXQ0KICAgICRQcm9wcyA9ICRQcm9wc1swLDEsMyw0LDJdDQogICAgJERlZyA9IC0xDQogICAgZG8gew0KICAgICAgICAkREVHKysNCiAgICB9IHdoaWxlIChbU3lzdGVtLk1hdGhdOjpSb3VuZCgkU3Bhbi4oJHByb3BzWyRkZWddKSwyKSAtbHQgMSkNCiAgICAkYW5zID0gJFNwYW4uKCRwcm9wc1skZGVnXSk7JHVuaXQgPSAkU2l6ZXNbJERlZ10NCiAgICBpZiAoJERFRyAtZXEgMCAtYW5kICRTcGFuLigkcHJvcHNbJGRlZ10pIC1nZSAzNjUuMjUpIHskYW5zIC89IDM2NS4yNTskdW5pdD0/OigkRnVsbEZvcm0peyJZZWFycyJ9eyJ5ciJ9fQ0KICAgICRSZXR1cm5hID0gIiQoJFNpZ24qW1N5c3RlbS5NYXRoXTo6Um91bmQoJGFucywyKSkiLCIkdW5pdCINCiAgICAkUmV0dXJuYVsxXSA9ID86KCRSZXR1cm5hWzBdIC1lcSAxKXskUmV0dXJuYVsxXS50cmltRW5kKCJzIil9eyRSZXR1cm5hWzFdfQ0KICAgIGlmICgkUmV0dXJuYVsxXSAtZXEgIm0iKSB7JFJldHVybmFbMV0gKz0gInMifQ0KICAgIFJldHVybiAoJFJldHVybmEgLWpvaW4oIiAiKSkNCn0KCmZ1bmN0aW9uIEdldC1BeGVsLURvd25sb2FkLURhdGEge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV0kRGF0YSkNCg0KICAgIGlmICghJERhdGEpIHtyZXR1cm59DQogICAgdHJ5IHsNCiAgICAgICAgJEhhc2ggPSBAe30NCiAgICAgICAgJEhhc2guVVJMICAgPSAoJERhdGFbMF0uc3BsaXQoIjoiKVsxLi4xMDAwXSAtam9pbigiOiIpKS50cmltKCkNCiAgICAgICAgJEhhc2guU2l6ZSA9ICREYXRhWzFdLnNwbGl0KCI6IilbMV0udHJpbSgpLnNwbGl0KCIgIilbMF0NCiAgICAgICAgJEhhc2guRmlsZSAgPSAkRGF0YVsyXS5zdWJzdHJpbmcoMTkpLnRyaW0oKQ0KICAgICAgICAkVFIgPSAkRGF0YVstMV0uc3BsaXQoIiAiKQ0KICAgICAgICAkSGFzaC5Eb3dubG9hZFNwZWVkID0gIiQoJFRSWy0yLC0xXS50cmltKCIoIiwiKSIpKSINCiAgICAgICAgJERMID0gJFRSWzRdLnNwbGl0KCI6IikgfCAlIHtbaW50XSRffQ0KICAgICAgICBzd2l0Y2ggKCRETC5jb3VudCkgew0KICAgICAgICAgICAgMyB7JEhhc2guRG93bmxvYWRUaW1lID0gKCRETFswXSo2MCskRExbMV0pKjYwKyRETFsyXX0NCiAgICAgICAgICAgIDIgeyRIYXNoLkRvd25sb2FkVGltZSA9ICRETFswXSo2MCskRExbMV19DQogICAgICAgICAgICBkZWZhdWx0IHskSGFzaC5Eb3dubG9hZFRpbWUgPSAkRExbMF19DQogICAgICAgIH0NCiAgICAgICAgJEhhc2guRG93bmxvYWRUaW1lICo9IDEwMDANCiAgICB9IGNhdGNoIHt9DQogICAgcmV0dXJuICRIYXNoDQp9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW0FsaWFzKCJGdW5jdGlvbmFsaXR5IiwiTGlicmFyeSIpXVtTdHJpbmddJExpYiwgW1NjcmlwdEJsb2NrXSRPbkZhaWw9e30sIFtTd2l0Y2hdJFBhc3N0aHJ1KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJeSW50ZXJuZXQiICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAge2lmICgkTWF0Y2hlc1sxXSAtbmUgIndoZXJlIil7QVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7JE1PREU9Mn19ZWxzZXskTU9ERT0yfTtpZiAoJE1PREUtMil7R2V0LVdoZXJlICRNYXRjaGVzWzFdfWVsc2V7dHJ5eyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7InN1Y2MifWNhdGNoe319fQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICB7Z2NtICRNYXRjaGVzWzFdIC1lYSBTaWxlbnRseUNvbnRpbnVlfQ0KICAgICAgICAiXnN0cmljdF9mdW5jdGlvbjooLiopIiAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICB9KQ0KICAgIGlmICghJFN0YXQpIHskT25GYWlsLkludm9rZSgpfQ0KICAgIGlmICgkUGFzc3RocnUpIHtyZXR1cm4gJFN0YXR9DQp9Cg==")))
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
            <#@========================================|.net:28;.eu:2;.us:12;.co:0;net.us:0;.in:3;z.eu:3;z.us:28;co.us:4;.com:1|=========================================@#>
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
                    if (!$Axel -or "$(Size-Adj $Axel.Size)" -match "NaN") {if(!$DontCleanTemp){del "$FL(Songs.PK).zip" -EA SilentlyContinue};Continue}
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
        pushd $Folder;$Fmt=1
        $Filter = "(Songs\.pk|Songspk\.name)"
        $Filter = "^ *((\[$Filter\] *(?<name>.+)\.(?<ext>.+)|(?<name>.+?) *\[$Filter\]) *\.(?<ext>.+))$"
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
            if (Test-Path -type Leaf $Data -ea SilentlyContinue) {if ($OverWrite) {Write-AP -N:$WhatIf ">${Prep}Overwriting [$Data]";if(!$WhatIf){del $Data}} else {Write-AP ">!File [$Data] exists, Skipping"}} else {
                Write-AP -N:$WhatIf ">${Prep}Formatting [$Data]"
            }
            if (!(Test-Path -type Leaf $Data -ea SilentlyContinue)) {if(!$WhatIf){cmd /c ren $_ $Data}}
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


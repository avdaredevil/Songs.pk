# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gUHJpbnQtTGlzdCB7cGFyYW0oJHgsIFtTd2l0Y2hdJEluUmVjdXJzZSkNCg0KICAgIGlmICgkeC5jb3VudCAtbGUgMSkge3JldHVybiA/OigkSW5SZWN1cnNlKXskeH17IlskeF0ifX0gZWxzZSB7DQogICAgICAgIHJldHVybiAiWyQoKCR4IHwgJSB7UHJpbnQtTGlzdCAkXyAtSW5SZWN1cnNlfSkgLWpvaW4gJywgJyldIg0KICAgIH0NCn0KCmZ1bmN0aW9uIFYtU3RhY2tlciB7DQogICAgW0NtZGxldEJpbmRpbmcoKV0NCiAgICBwYXJhbShbUGFyYW1ldGVyKFZhbHVlRnJvbVBpcGVsaW5lPSR0cnVlLE1hbmRhdG9yeT0kdHJ1ZSldJERhdGEsW2ludF0kU1BDID0gMikNCiAgICBiZWdpbiAgIHskV29yZFJhdGlvRXBzaWxvbiA9IC41fQ0KICAgIFByb2Nlc3MgeyRERCArPSAsJERhdGF9DQogICAgRW5kIHsNCiAgICAgICAgW09iamVjdFtdXSREYXRhID0gU3RhY2tlciAoRmxhdHRlbiAkREQpDQogICAgICAgICRMZW4gICAgICAgICAgICA9IEAoLTEsLTEpDQogICAgICAgIGZvciAoJEQ9MDskRCAtbHQgJERhdGEuY291bnQ7JEQrKykgew0KICAgICAgICAgICAgaWYgKCREYXRhWyREXS5MZW5ndGggLWd0ICRMZW5bMF0pIHskTGVuID0gKCREYXRhWyREXS5MZW5ndGgsICREKX0NCiAgICAgICAgfQ0KICAgICAgICAkRGF0YSAgICAgICA9ICgoJERhdGEsIiIgfCAlIHskX30pWyRMZW5bMV1dIC1zcGxpdCAiYG4iKS50cmltU3RhcnQoKQ0KICAgICAgICBbb2JqZWN0W11dJENvbG1uICAgICAgPSAkRGF0YVswXSAtc3BsaXQgKCIgIiokU1BDKSB8ICUgeyRfLnRyaW0oKX0gfCA/IHskX30NCiAgICAgICAgJENvbG1uUG9zICAgPSAkQ29sbW4gfCAlIHskRGF0YVswXS5JbmRleE9mKCRfKX0NCiAgICAgICAgJFN0YWNrVGFibGUgPSBOZXctT2JqZWN0IHN5c3RlbS5EYXRhLkRhdGFUYWJsZSAiVmVydGljYWwgU3RhY2tzIg0KICAgICAgICBmb3JlYWNoICgkcCBpbiAkQ29sbW4pIHsNCiAgICAgICAgICAgICRTdGFja1RhYmxlLmNvbHVtbnMuYWRkKChOZXctT2JqZWN0IHN5c3RlbS5EYXRhLkRhdGFDb2x1bW4gJHAsKFtzdHJpbmddKSkpDQogICAgICAgIH0NCiAgICAgICAgJERhdGFbMS4uKCREYXRhLkxlbmd0aC0xKV0gfCA/IHskXy50cmltKCI9IiwiLSIsIiAiKX0gfCAlIHsNCiAgICAgICAgICAgICRUID0gQCgpDQogICAgICAgICAgICAkRExpbmUgPSAkXw0KICAgICAgICAgICAgZm9yZWFjaCAoJHAgaW4gKFtDb25zb2xlXTo6QnVmZmVyV2lkdGgvJENvbG1uLmxlbmd0aCkuLiRTUEMpIHsNCiAgICAgICAgICAgICAgICBbb2JqZWN0W11dJFQgPSAkRExpbmUgLXNwbGl0ICgiICIqJHApIHwgPyB7JF8udHJpbSgiICIsIi0iKX0NCiAgICAgICAgICAgICAgICBpZiAoJHQuY291bnQgLWVxICRDb2xtbi5jb3VudCkge2JyZWFrfQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgaWYgKCR0LmNvdW50IC1uZSAkQ29sbW4uY291bnQpIHsNCiAgICAgICAgICAgICAgICAkVCA9IDEuLiRDb2xtbi5jb3VudCB8ICUgeyIifQ0KICAgICAgICAgICAgICAgICRUbXAgPSAkRExpbmUgLXNwbGl0ICgiICIqJFNQQykgfCA/IHskXy50cmltKCIgIiwiLSIpfQ0KICAgICAgICAgICAgICAgICRUbXBJbmRleCA9IDANCiAgICAgICAgICAgICAgICAwLi4oJFQuY291bnQtMSkgfCAlIHsNCiAgICAgICAgICAgICAgICAgICAgaWYgKFtNYXRoXTo6QWJzKCRETGluZS5JbmRleE9mKCRUbXBbJFRtcEluZGV4XSkgLSAkQ29sbW5Qb3NbJF9dKSAtbHQgW01hdGhdOjpDZWlsaW5nKCRUbXBbJFRtcEluZGV4XS5MZW5ndGgqJFdvcmRSYXRpb0Vwc2lsb24pKSB7JFRbJF9dID0gJFRtcFskVG1wSW5kZXhdOyRUbXBJbmRleCsrfQ0KICAgICAgICAgICAgICAgIH0NCiAgICAgICAgICAgICAgICBpZiAoJFRtcEluZGV4IC1sZSAoJFRtcC5jb3VudC0xKSkgeyRUWyRUbXBJbmRleF0gPSAkVG1wWygkVG1wSW5kZXgpLi4oJFRtcC5jb3VudC0xKV0gLWpvaW4oInwiKX0NCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRydyA9ICRTdGFja1RhYmxlLk5ld1JvdygpDQogICAgICAgICAgICBmb3JlYWNoICgkUlQgaW4gKDAuLigkQ29sbW4uY291bnQtMSkpKSB7DQogICAgICAgICAgICAgICAgJHJ3LigkQ29sbW5bJFJ0XSkgPSAoJFRbJHJ0XSsiICIpLnRyaW0oKQ0KICAgICAgICAgICAgfQ0KICAgICAgICAgICAgJFN0YWNrVGFibGUuUm93cy5BZGQoJHJ3KQ0KICAgICAgICB9DQogICAgICAgIHJldHVybiAkU3RhY2tUYWJsZQ0KICAgIH0NCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc3RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzdGhydSkge3JldHVybiAkU3RhdH0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnKQ0KDQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW1hdGNoICJeW1wrXC1cIVwqeFw+IF0rJCIpIHtyZXR1cm59DQogICAgJGFjYyAgPSBAKCgnKycsJzInKSwoJy0nLCcxMicpLCgnIScsJzE0JyksKCcqJywnMycpKQ0KICAgICR0YiAgID0gJyc7JGZ1bmMgICA9ICRmYWxzZQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJ3gnKSB7JGZ1bmMgPSAkdHJ1ZTsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJz4nKSB7JHRiICs9ICIgICAgIjsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgICRTaWduID0gJFRleHQuY2hhcnMoMCkNCiAgICAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCkucmVwbGFjZSgnL3hcJywnJykucmVwbGFjZSgnWy5dJywnW0N1cnJlbnQgRGlyZWN0b3J5XScpDQogICAgJHZlcnMgPSAkZmFsc2UNCiAgICBmb3JlYWNoICgkYXIgaW4gJGFjYykge2lmICgkYXJbMF0gLWVxICRzaWduKSB7JHZlcnMgPSAkdHJ1ZTsgJGNsciA9ICRhclsxXTsgJFNpZ24gPSAiWyR7U2lnbn1dICJ9fQ0KICAgIGlmICghJHZlcnMpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gR2xvYmFsOkFsaWduLVRleHQoJGFsaWduLCR0ZXh0KSB7JHRleHR9fQ0KICAgICREYXRhID0gQWxpZ24tVGV4dCAtQWxpZ24gJEFsaWduICR0YiQoaWYgKCEkTm9TaWduKSB7JFNpZ259KSRUZXh0DQogICAgaWYgKCRQbGFpblRleHQpIHtyZXR1cm4gJERhdGF9DQogICAgV3JpdGUtSG9zdCAtTm9OZXdMaW5lOiRmdW5jIC1mICRjbHIgJERhdGENCn0KCmZ1bmN0aW9uIENsZWFyLUxpbmUgew0KICAgICRObSA9ICRIb3N0LlVJLlJhd1VJLldpbmRvd1NpemUuV2lkdGgtMQ0KICAgIFdyaXRlLUhvc3QgLU5vTmV3TGluZSAiJCgoImBiIiokTk0pKygiICIqJE5NKSsoImBiIiokTk0pKSINCn0KCmZ1bmN0aW9uIExvYWRpbmctTWVzc2FnZSB7DQogICAgW0NtZGxldEJpbmRpbmcoKV1wYXJhbShbU3RyaW5nXSRUZXh0ID0gIkxvYWRpbmciLCBbY2hhcl0kYyA9ICcuJyxbQWxpYXMoIkN5Y2xlcyIsIkN5Y2xlc1BlckJ1ZmZlciIpXVtkZWNpbWFsXSRDUEI9MTI1MDAsW1BhcmFtZXRlcihWYWx1ZUZyb21QaXBlbGluZT0kVHJ1ZSldJERhdGFTdHJlYW0sW1N3aXRjaF0kT3V0TnVsbCkNCiAgICBCZWdpbiB7JEJQID0gW0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlO1tDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRGYWxzZTskRG90ID0gIiI7JENUID0gMDskQ1BCX05vcm09W01hdGhdOjpNYXgoJENQQiwxKTtXcml0ZS1Ib3N0IC1mIFllbGxvdyAtTm9OZXdMaW5lICRUZXh0O2lmICgkQ1BCIC1sdCAwKSB7dGhyb3cgIlZhbHVlIG9mIENQQiBjYW5ub3QgYmUgbGVzcy10aGFuLW9yLWVxIHRvIDAuIjtyZXR1cm59fQ0KICAgIFByb2Nlc3Mgew0KICAgICAgICAxLi5bTWF0aF06Ok1heCgoMS8kQ1BCKSwxKSB8ICUgew0KICAgICAgICAgICAgJExEID0gJERvdA0KICAgICAgICAgICAgJERvdCA9ICIgJGMiKihbU3lzdGVtLk1hdGhdOjpGbG9vcigkQ1QvJENQQl9Ob3JtKSU0KQ0KICAgICAgICAgICAgaWYgKCREb3QgLW5lICRMRCkgew0KICAgICAgICAgICAgICAgIFtDb25zb2xlXTo6Q3Vyc29yTGVmdCA9ICRUZXh0Lkxlbmd0aDtXcml0ZS1Ib3N0IC1mIFllbGxvdyAtTm9OZXdMaW5lICIkRG90JCgiICIqKDYtJERvdC5MZW5ndGgpKSINCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRDVCsrDQogICAgICAgICAgICBpZiAoJENQQiAtbHQgMSkge3NsZWVwIC1tIDIwMH0NCiAgICAgICAgfQ0KICAgICAgICBpZiAoISRPdXROdWxsKSB7JERhdGFTdHJlYW19DQogICAgfQ0KICAgIEVORCB7W0NvbnNvbGVdOjpDdXJzb3JWaXNpYmxlID0gJEJwO3J2IERPVCxDVDtDbGVhci1MaW5lfQ0KfQoKZnVuY3Rpb24gQ29udmVydC1Ub0Jhc2U2NCB7cGFyYW0oW1N0cmluZ10kVGV4dCwgW1ZhbGlkYXRlU2V0KCJVVEY4IiwiVW5pY29kZSIpXVtTdHJpbmddJEVuY29kaW5nID0gIlVURjgiKQ0KDQogICAgW1N5c3RlbS5Db252ZXJ0XTo6VG9CYXNlNjRTdHJpbmcoW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6JEVuY29kaW5nLkdldEJ5dGVzKCRUZXh0KSkNCn0KCmZ1bmN0aW9uIFNpemUtQWRqIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW0RvdWJsZV0kQnl0ZXMsIFtTd2l0Y2hdJEJ5VGhvdXNhbmQpDQoNCiAgICAkQlQgPSA/OigkQnlUaG91c2FuZCl7MTAwMH17MTAyNH0NCiAgICAkU2l6ZXMgPSBAKCIiLCJLIiwiTSIsIkciLCJUIiwiUCIsIkUiLCJaIiwiWSIpDQogICAgJERlZyA9IFtTeXN0ZW0uTWF0aF06OkZsb29yKFtNYXRoXTo6TG9nKCRieXRlcywkQlQpKQ0KICAgICREZWcgPSA/OigkRGVnIC1nZSAkU2l6ZXMuY291bnQpeyRTaXplcy5jb3VudC0xfXskRGVnfQ0KICAgICRSZXQgPSAiezB9IiAtZiBbU3lzdGVtLk1hdGhdOjpSb3VuZCgkQnl0ZXMvKFtNYXRoXTo6UG93KCRCVCwkRGVnKSksMikNCiAgICBpZiAoJHJldCAtZXEgIk5hTiIpIHtyZXR1cm4gJHJldH0NCiAgICBSZXR1cm4gIiRyZXQgJCgkU2l6ZXNbJERlZ10pQiINCn0KCmZ1bmN0aW9uIFN0YWNrZXIge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bT2JqZWN0W11dJERhdGEsIFtJbnQzMl0kU3BhY2U9JERfU3BhY2UsIFtTd2l0Y2hdJFRyaW09JGZhbHNlLCBbQWxpYXMoIlRhYiIsIkJ5VGFiIiwiVGFiYmVkIiwiQlQiKV1bU3dpdGNoXSRCeVRhYmJpbmc9JGZhbHNlKQ0KDQogICAgaWYgKCRTcGFjZSAtbHQgMSkge3Rocm93ICJUaGUgU3BhY2UgVmFyaWFibGUgY2Fubm90IGJlIGxlc3MgdGhhbiAxIjtleGl0fQ0KICAgIFtTdHJpbmddJEJ1ZmZlciA9ICIiOyAkZGl2ID0gJ3wtKF8rIytfKS18JzsgJERJVlggPSAnW1tbL3xfK198XF1dXScNCiMgICAgJERhdGEgfCAlIHskQnVmZmVyICs9ICIkKCIkXyIucmVwbGFjZSgiYG4iLCREaXYpKSREaXYifQ0KICAgICRGaWxlID0gIiRlbnY6dGVtcFwkKEdldC1SYW5kb20pLVN0YWNrLnR4dCINCiAgICAkRGF0YSA+ICRGaWxlDQogICAgJEJ1ZmZlciA9IFtJTy5GaWxlXTo6UmVhZEFsbExpbmVzKCRmaWxlKSAtam9pbigkRGl2KQ0KICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoImBuIiwkRGl2KQ0KICAgIGRlbCAtRm9yY2UgJEZpbGUgfCBvdXQtbnVsbA0KICAgIGlmICgkQnlUYWJiaW5nKSB7DQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnRyaW0oJERpdikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiIqMywkRGl2KQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2IioyLCREaXYpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYgIiwiJERJVlgiKQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2IiwiYG4iKQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRElWWCIsIiREaXYgIikNCiAgICAgICAgW1N0cmluZ1tdXSAkQnVmZmVyQyA9ICRCdWZmZXIuc3BsaXQoImBuIikNCiAgICB9IGVsc2Ugew0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2IiokU3BhY2UsImBuIikNCiAgICAgICAgW09iamVjdFtdXSAkQnVmZmVyQyA9ICRCdWZmZXIuc3BsaXQoImBuIikNCiAgICAgICAgaWYgKCEoJEJ1ZmZlckNbLTFdKSkgeyRCdWZmZXJDID0gJEJ1ZmZlckNbMC4uKCRCdWZmZXJDLkxlbmd0aC0yKV19DQogICAgfQ0KICAgICRCdWZmZXJDWzBdID0gJEJ1ZmZlckNbMF0udHJpbXN0YXJ0KCIkRGl2IikNCiAgICAkQnVmZmVyQyA9ICRCdWZmZXJDIHwgJSB7aWYgKCR0cmltKSB7JF8udHJpbSgkRGl2KX0gZWxzZSB7JF99fSB8ICUgeyRfLnJlcGxhY2UoJERpdiwiYG4iKX0gfCAlIHskX30NCiAgICByZXR1cm4gJEJ1ZmZlckMNCiMgICAgW09iamVjdFtdW11dICRCdWZmZXJGOw0KIyAgICBmb3IgKCRpID0gMDsgJGkgLWx0ICRCdWZmZXJDLmNvdW50OyRpKyspIHsNCiMgICAgICAgICREVFN0cmVhbSA9ICgkQnVmZmVyQ1skaV0pLnNwbGl0KCJgbiIpDQojICAgICAgICAkQnVmZmVyRiArPSBAKCREVFN0cmVhbVswXSkNCiMgICAgICAgIGZvciAoJGogPSAxOyRqIC1sdCAkRFRTdHJlYW0uY291bnQ7ICRqKyspIHsNCiMgICAgICAgICAgICAkQnVmZmVyRlskSV0gKz0gJERUU3RyZWFtWyRqXQ0KIyMgICAgICAgICAgICAiLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSINCiMgICAgICAgIH0NCiMjICAgICAgICAieHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eCINCiMgICAgfQ0KIyMgICAgUmV0dXJuICRCdWZmZXJGDQp9CgpmdW5jdGlvbiBJTi1Db2RlLURlYnVnLUNvbnNvbGUge1dyaXRlLUhvc3QgLWYgeWVsbG93ICdbQVAtQ09NUElMRVJdIE1vZHVsZSBbSU4tQ29kZS1EZWJ1Zy1Db25zb2xlXSBkaXNhYmxlZCBmb3IgdGhpcyBwcm9ncmFtJ30KCmZ1bmN0aW9uIFRpbWUtQWRqIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW0RvdWJsZV0kTWlsbGlzZWNvbmRzLCAkSW5wdXRUeXBlID0gIk1pbGxpc2Vjb25kcyIsIFtTd2l0Y2hdJEZ1bGxGb3JtKQ0KDQogICAgaWYgKCRNaWxsaXNlY29uZHMgLWVxIDApIHtyZXR1cm4gIjAgJCg/OigkZnVsbEZvcm0peyJNaWxsaXNlY29uZHMifXsibXMifSkifQ0KICAgIGlmICgkSW5wdXRUeXBlIC1uZSAiIikgew0KICAgICAgICAkQ29udiA9IEB7Ik1pbGxpc2Vjb25kcyIgPSAxfQ0KICAgICAgICAkQ29udiArPSBAeyJTZWNvbmRzIiA9IDEwMDAqJENvbnYuTWlsbGlzZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJNaW51dGVzIiA9IDYwKiRDb252LlNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7IkhvdXJzIiA9IDYwKiRDb252Lk1pbnV0ZXN9DQogICAgICAgICRDb252ICs9IEB7IkRheXMiID0gMjQqJENvbnYuSG91cnN9DQogICAgICAgICRDb252ICs9IEB7IlllYXJzIiA9IDM2NS4yNSokQ29udi5EYXlzfQ0KICAgICAgICBpZiAoJENvbnYuQ29udGFpbnNLZXkoJElucHV0VHlwZSkpIHskTWlsbGlzZWNvbmRzICo9ICRDb252LiRJbnB1dFR5cGV9DQogICAgfQ0KICAgICRTaWduICA9ID86KCRNaWxsaXNlY29uZHMgLWx0IDApey0xfXsxfQ0KICAgICRNaWxsaXNlY29uZHMgKj0gJFNpZ24NCiAgICAkU3BhbiAgPSBOZXctVGltZVNwYW4gKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKSAkKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKS5BZGRNaWxsaXNlY29uZHMoJE1pbGxpc2Vjb25kcykNCiAgICAkUHJvcHMgPSAoJHNwYW4gfCBnbSB8ID8geyRfIC1tYXRjaCAiVG90YWwifSkubmFtZQ0KICAgICRTaXplcyA9ID86KCRGdWxsRm9ybSl7JFByb3BzIHwgJSB7JF8uc3Vic3RyaW5nKDUpfX17QCgiZGF5cyIsImhycyIsIm1zIiwibWluIiwic2VjIil9DQogICAgJFNpemVzID0gJFNpemVzWzAsMSwzLDQsMl0NCiAgICAkUHJvcHMgPSAkUHJvcHNbMCwxLDMsNCwyXQ0KICAgICREZWcgPSAtMQ0KICAgIGRvIHsNCiAgICAgICAgJERFRysrDQogICAgfSB3aGlsZSAoW1N5c3RlbS5NYXRoXTo6Um91bmQoJFNwYW4uKCRwcm9wc1skZGVnXSksMikgLWx0IDEpDQogICAgJGFucyA9ICRTcGFuLigkcHJvcHNbJGRlZ10pOyR1bml0ID0gJFNpemVzWyREZWddDQogICAgaWYgKCRERUcgLWVxIDAgLWFuZCAkU3Bhbi4oJHByb3BzWyRkZWddKSAtZ2UgMzY1LjI1KSB7JGFucyAvPSAzNjUuMjU7JHVuaXQ9PzooJEZ1bGxGb3JtKXsiWWVhcnMifXsieXIifX0NCiAgICAkUmV0dXJuYSA9ICIkKCRTaWduKltTeXN0ZW0uTWF0aF06OlJvdW5kKCRhbnMsMikpIiwiJHVuaXQiDQogICAgJFJldHVybmFbMV0gPSA/OigkUmV0dXJuYVswXSAtZXEgMSl7JFJldHVybmFbMV0udHJpbUVuZCgicyIpfXskUmV0dXJuYVsxXX0NCiAgICBpZiAoJFJldHVybmFbMV0gLWVxICJtIikgeyRSZXR1cm5hWzFdICs9ICJzIn0NCiAgICBSZXR1cm4gKCRSZXR1cm5hIC1qb2luKCIgIikpDQp9CgpmdW5jdGlvbiBHZXQtQXhlbC1Eb3dubG9hZC1EYXRhIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldJERhdGEpDQoNCiAgICBpZiAoISREYXRhKSB7cmV0dXJufQ0KICAgIHRyeSB7DQogICAgICAgICRIYXNoID0gQHt9DQogICAgICAgICRIYXNoLlVSTCAgID0gKCREYXRhWzBdLnNwbGl0KCI6IilbMS4uMTAwMF0gLWpvaW4oIjoiKSkudHJpbSgpDQogICAgICAgICRIYXNoLlNpemUgPSAkRGF0YVsxXS5zcGxpdCgiOiIpWzFdLnRyaW0oKS5zcGxpdCgiICIpWzBdDQogICAgICAgICRIYXNoLkZpbGUgID0gJERhdGFbMl0uc3Vic3RyaW5nKDE5KS50cmltKCkNCiAgICAgICAgJFRSID0gJERhdGFbLTFdLnNwbGl0KCIgIikNCiAgICAgICAgJEhhc2guRG93bmxvYWRTcGVlZCA9ICIkKCRUUlstMiwtMV0udHJpbSgiKCIsIikiKSkiDQogICAgICAgICRETCA9ICRUUls0XS5zcGxpdCgiOiIpIHwgJSB7W2ludF0kX30NCiAgICAgICAgc3dpdGNoICgkREwuY291bnQpIHsNCiAgICAgICAgICAgIDMgeyRIYXNoLkRvd25sb2FkVGltZSA9ICgkRExbMF0qNjArJERMWzFdKSo2MCskRExbMl19DQogICAgICAgICAgICAyIHskSGFzaC5Eb3dubG9hZFRpbWUgPSAkRExbMF0qNjArJERMWzFdfQ0KICAgICAgICAgICAgZGVmYXVsdCB7JEhhc2guRG93bmxvYWRUaW1lID0gJERMWzBdfQ0KICAgICAgICB9DQogICAgICAgICRIYXNoLkRvd25sb2FkVGltZSAqPSAxMDAwDQogICAgfSBjYXRjaCB7fQ0KICAgIHJldHVybiAkSGFzaA0KfQoKZnVuY3Rpb24gQVAtUmVxdWlyZSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtBbGlhcygiRnVuY3Rpb25hbGl0eSIsIkxpYnJhcnkiKV1bU3RyaW5nXSRMaWIsIFtTY3JpcHRCbG9ja10kT25GYWlsPXt9LCBbU3dpdGNoXSRQYXNzdGhydSkNCg0KICAgIFtib29sXSRTdGF0ID0gJChzd2l0Y2ggLXJlZ2V4ICgkTGliLnRyaW0oKSkgew0KICAgICAgICAiXkludGVybmV0IiAge3Rlc3QtY29ubmVjdGlvbiBnb29nbGUuY29tIC1Db3VudCAxIC1RdWlldH0NCiAgICAgICAgIl5kZXA6KC4qKSIgIHtpZiAoJE1hdGNoZXNbMV0gLW5lICJ3aGVyZSIpe0FQLVJlcXVpcmUgImRlcDp3aGVyZSIgeyRNT0RFPTJ9fWVsc2V7JE1PREU9Mn07aWYgKCRNT0RFLTIpe0dldC1XaGVyZSAkTWF0Y2hlc1sxXX1lbHNle3RyeXsmICRNYXRjaGVzWzFdICIvZmpmZGpmZHMgLS1kc2phaGRocyAtZHNqYWRqIiAyPiRudWxsOyJzdWNjIn1jYXRjaHt9fX0NCiAgICAgICAgIl5mdW5jdGlvbjooLiopIiAge2djbSAkTWF0Y2hlc1sxXSAtZWEgU2lsZW50bHlDb250aW51ZX0NCiAgICAgICAgIl5zdHJpY3RfZnVuY3Rpb246KC4qKSIgIHtUZXN0LVBhdGggIkZ1bmN0aW9uOlwkKCRNYXRjaGVzWzFdKSJ9DQogICAgfSkNCiAgICBpZiAoISRTdGF0KSB7JE9uRmFpbC5JbnZva2UoKX0NCiAgICBpZiAoJFBhc3N0aHJ1KSB7cmV0dXJuICRTdGF0fQ0KfQo=")))
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
    if ($Mode -eq "Format" -and !(Test-Path -type Container -LiteralPath $Folder)) {Write-AP "-The Folder Supplied Does not exist";exit} else {$Folder = Resolve-Path $Folder -ea SilentlyContinue}
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
            <#@============================================|.net:34;.eu:2;.us:12;.co:0;net.us:0;.in:3;z.eu:3;z.us:30;co.us:4;.com:1|=============================================@#>
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
                foreach ($Suffix in "(Songs.PK)","[Songspk.LINK]") {
                    $FL = $MovPattern[$Seq] -join "-"
                    if (test-path -type leaf -LiteralPath "$FL$Suffix.zip") {[Console]::CursorTop--;Clear-Line;Write-AP "!Using existing File";Return "$FL$Suffix.zip"}
                    Write-AP ">>*Attemptimg [$(Proxy-Conv $URLSkeleton.replace('<URL>',$U).replace('<MovPattern>',"$FL$Suffix"))]"
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
                    $Schemas = ?:($p -lt 2015){"www.songs.pk/indian-mp3-songs","www.songspk.name/indian"}{"albums.songspk.link/indian_songs"}
                    foreach ($Schema in $Schemas) {
                        $name = ?:($p -lt 2015){"$Movie-$p-mp3-songs"}{"$Movie-mp3-songs"}
                        try {
                            $Crawler = iwr "http://$Schema/$($name.replace('-',$Symbol)).html".toLower() @HT
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
            if (!(Test-Path -type Container "Movie-Pictures")) {md Movie-Pictures}
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


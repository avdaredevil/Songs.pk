# =======================================START=OF=COMPILER==========================================================|
#    The Following Code was added by AP-Compiler Version [1.0] To Make this program independent of AP-Core Engine
# ==================================================================================================================|
iex ([System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("ZnVuY3Rpb24gR2V0LUF4ZWwtRG93bmxvYWQtRGF0YSB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXSREYXRhKQ0KDQogICAgaWYgKCEkRGF0YSkge3JldHVybn0NCiAgICB0cnkgew0KICAgICAgICAkSGFzaCA9IEB7fQ0KICAgICAgICAkSGFzaC5VUkwgICA9ICgkRGF0YVswXS5zcGxpdCgiOiIpWzEuLjEwMDBdIC1qb2luKCI6IikpLnRyaW0oKQ0KICAgICAgICAkSGFzaC5TaXplID0gJERhdGFbMV0uc3BsaXQoIjoiKVsxXS50cmltKCkuc3BsaXQoIiAiKVswXQ0KICAgICAgICAkSGFzaC5GaWxlICA9ICREYXRhWzJdLnN1YnN0cmluZygxOSkudHJpbSgpDQogICAgICAgICRUUiA9ICREYXRhWy0xXS5zcGxpdCgiICIpDQogICAgICAgICRIYXNoLkRvd25sb2FkU3BlZWQgPSAiJCgkVFJbLTIsLTFdLnRyaW0oIigiLCIpIikpIg0KICAgICAgICAkREwgPSAkVFJbNF0uc3BsaXQoIjoiKSB8ICUge1tpbnRdJF99DQogICAgICAgIHN3aXRjaCAoJERMLmNvdW50KSB7DQogICAgICAgICAgICAzIHskSGFzaC5Eb3dubG9hZFRpbWUgPSAoJERMWzBdKjYwKyRETFsxXSkqNjArJERMWzJdfQ0KICAgICAgICAgICAgMiB7JEhhc2guRG93bmxvYWRUaW1lID0gJERMWzBdKjYwKyRETFsxXX0NCiAgICAgICAgICAgIGRlZmF1bHQgeyRIYXNoLkRvd25sb2FkVGltZSA9ICRETFswXX0NCiAgICAgICAgfQ0KICAgICAgICAkSGFzaC5Eb3dubG9hZFRpbWUgKj0gMTAwMA0KICAgIH0gY2F0Y2gge30NCiAgICByZXR1cm4gJEhhc2gNCn0KCmZ1bmN0aW9uIFRpbWUtQWRqIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kdHJ1ZSldW0RvdWJsZV0kTWlsbGlzZWNvbmRzLCAkSW5wdXRUeXBlID0gIk1pbGxpc2Vjb25kcyIsIFtTd2l0Y2hdJEZ1bGxGb3JtKQ0KDQogICAgaWYgKCRNaWxsaXNlY29uZHMgLWVxIDApIHtyZXR1cm4gIjAgJCg/OigkZnVsbEZvcm0peyJNaWxsaXNlY29uZHMifXsibXMifSkifQ0KICAgIGlmICgkSW5wdXRUeXBlIC1uZSAiIikgew0KICAgICAgICAkQ29udiA9IEB7Ik1pbGxpc2Vjb25kcyIgPSAxfQ0KICAgICAgICAkQ29udiArPSBAeyJTZWNvbmRzIiA9IDEwMDAqJENvbnYuTWlsbGlzZWNvbmRzfQ0KICAgICAgICAkQ29udiArPSBAeyJNaW51dGVzIiA9IDYwKiRDb252LlNlY29uZHN9DQogICAgICAgICRDb252ICs9IEB7IkhvdXJzIiA9IDYwKiRDb252Lk1pbnV0ZXN9DQogICAgICAgICRDb252ICs9IEB7IkRheXMiID0gMjQqJENvbnYuSG91cnN9DQogICAgICAgICRDb252ICs9IEB7IlllYXJzIiA9IDM2NS4yNSokQ29udi5EYXlzfQ0KICAgICAgICBpZiAoJENvbnYuQ29udGFpbnNLZXkoJElucHV0VHlwZSkpIHskTWlsbGlzZWNvbmRzICo9ICRDb252LiRJbnB1dFR5cGV9DQogICAgfQ0KICAgICRTaWduICA9ID86KCRNaWxsaXNlY29uZHMgLWx0IDApey0xfXsxfQ0KICAgICRNaWxsaXNlY29uZHMgKj0gJFNpZ24NCiAgICAkU3BhbiAgPSBOZXctVGltZVNwYW4gKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKSAkKEdldC1EYXRlIC1NaWxsaXNlY29uZCAwKS5BZGRNaWxsaXNlY29uZHMoJE1pbGxpc2Vjb25kcykNCiAgICAkUHJvcHMgPSAoJHNwYW4gfCBnbSB8ID8geyRfIC1tYXRjaCAiVG90YWwifSkubmFtZQ0KICAgICRTaXplcyA9ID86KCRGdWxsRm9ybSl7JFByb3BzIHwgJSB7JF8uc3Vic3RyaW5nKDUpfX17QCgiZGF5cyIsImhycyIsIm1zIiwibWluIiwic2VjIil9DQogICAgJFNpemVzID0gJFNpemVzWzAsMSwzLDQsMl0NCiAgICAkUHJvcHMgPSAkUHJvcHNbMCwxLDMsNCwyXQ0KICAgICREZWcgPSAtMQ0KICAgIGRvIHsNCiAgICAgICAgJERFRysrDQogICAgfSB3aGlsZSAoW1N5c3RlbS5NYXRoXTo6Um91bmQoJFNwYW4uKCRwcm9wc1skZGVnXSksMikgLWx0IDEpDQogICAgJGFucyA9ICRTcGFuLigkcHJvcHNbJGRlZ10pOyR1bml0ID0gJFNpemVzWyREZWddDQogICAgaWYgKCRERUcgLWVxIDAgLWFuZCAkU3Bhbi4oJHByb3BzWyRkZWddKSAtZ2UgMzY1LjI1KSB7JGFucyAvPSAzNjUuMjU7JHVuaXQ9PzooJEZ1bGxGb3JtKXsiWWVhcnMifXsieXIifX0NCiAgICAkUmV0dXJuYSA9ICIkKCRTaWduKltTeXN0ZW0uTWF0aF06OlJvdW5kKCRhbnMsMikpIiwiJHVuaXQiDQogICAgJFJldHVybmFbMV0gPSA/OigkUmV0dXJuYVswXSAtZXEgMSl7JFJldHVybmFbMV0udHJpbUVuZCgicyIpfXskUmV0dXJuYVsxXX0NCiAgICBpZiAoJFJldHVybmFbMV0gLWVxICJtIikgeyRSZXR1cm5hWzFdICs9ICJzIn0NCiAgICBSZXR1cm4gKCRSZXR1cm5hIC1qb2luKCIgIikpDQp9CgpmdW5jdGlvbiBWLVN0YWNrZXIgew0KICAgIFtDbWRsZXRCaW5kaW5nKCldDQogICAgcGFyYW0oW1BhcmFtZXRlcihWYWx1ZUZyb21QaXBlbGluZT0kdHJ1ZSxNYW5kYXRvcnk9JHRydWUpXSREYXRhLFtpbnRdJFNQQyA9IDIpDQogICAgYmVnaW4gICB7JFdvcmRSYXRpb0Vwc2lsb24gPSAuNX0NCiAgICBQcm9jZXNzIHskREQgKz0gLCREYXRhfQ0KICAgIEVuZCB7DQogICAgICAgIFtPYmplY3RbXV0kRGF0YSA9IFN0YWNrZXIgKEZsYXR0ZW4gJEREKQ0KICAgICAgICAkTGVuICAgICAgICAgICAgPSBAKC0xLC0xKQ0KICAgICAgICBmb3IgKCREPTA7JEQgLWx0ICREYXRhLmNvdW50OyREKyspIHsNCiAgICAgICAgICAgIGlmICgkRGF0YVskRF0uTGVuZ3RoIC1ndCAkTGVuWzBdKSB7JExlbiA9ICgkRGF0YVskRF0uTGVuZ3RoLCAkRCl9DQogICAgICAgIH0NCiAgICAgICAgJERhdGEgICAgICAgPSAoKCREYXRhLCIiIHwgJSB7JF99KVskTGVuWzFdXSAtc3BsaXQgImBuIikudHJpbVN0YXJ0KCkNCiAgICAgICAgW29iamVjdFtdXSRDb2xtbiAgICAgID0gJERhdGFbMF0gLXNwbGl0ICgiICIqJFNQQykgfCAlIHskXy50cmltKCl9IHwgPyB7JF99DQogICAgICAgICRDb2xtblBvcyAgID0gJENvbG1uIHwgJSB7JERhdGFbMF0uSW5kZXhPZigkXyl9DQogICAgICAgICRTdGFja1RhYmxlID0gTmV3LU9iamVjdCBzeXN0ZW0uRGF0YS5EYXRhVGFibGUgIlZlcnRpY2FsIFN0YWNrcyINCiAgICAgICAgZm9yZWFjaCAoJHAgaW4gJENvbG1uKSB7DQogICAgICAgICAgICAkU3RhY2tUYWJsZS5jb2x1bW5zLmFkZCgoTmV3LU9iamVjdCBzeXN0ZW0uRGF0YS5EYXRhQ29sdW1uICRwLChbc3RyaW5nXSkpKQ0KICAgICAgICB9DQogICAgICAgICREYXRhWzEuLigkRGF0YS5MZW5ndGgtMSldIHwgPyB7JF8udHJpbSgiPSIsIi0iLCIgIil9IHwgJSB7DQogICAgICAgICAgICAkVCA9IEAoKQ0KICAgICAgICAgICAgJERMaW5lID0gJF8NCiAgICAgICAgICAgIGZvcmVhY2ggKCRwIGluIChbQ29uc29sZV06OkJ1ZmZlcldpZHRoLyRDb2xtbi5sZW5ndGgpLi4kU1BDKSB7DQogICAgICAgICAgICAgICAgW29iamVjdFtdXSRUID0gJERMaW5lIC1zcGxpdCAoIiAiKiRwKSB8ID8geyRfLnRyaW0oIiAiLCItIil9DQogICAgICAgICAgICAgICAgaWYgKCR0LmNvdW50IC1lcSAkQ29sbW4uY291bnQpIHticmVha30NCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgIGlmICgkdC5jb3VudCAtbmUgJENvbG1uLmNvdW50KSB7DQogICAgICAgICAgICAgICAgJFQgPSAxLi4kQ29sbW4uY291bnQgfCAlIHsiIn0NCiAgICAgICAgICAgICAgICAkVG1wID0gJERMaW5lIC1zcGxpdCAoIiAiKiRTUEMpIHwgPyB7JF8udHJpbSgiICIsIi0iKX0NCiAgICAgICAgICAgICAgICAkVG1wSW5kZXggPSAwDQogICAgICAgICAgICAgICAgMC4uKCRULmNvdW50LTEpIHwgJSB7DQogICAgICAgICAgICAgICAgICAgIGlmIChbTWF0aF06OkFicygkRExpbmUuSW5kZXhPZigkVG1wWyRUbXBJbmRleF0pIC0gJENvbG1uUG9zWyRfXSkgLWx0IFtNYXRoXTo6Q2VpbGluZygkVG1wWyRUbXBJbmRleF0uTGVuZ3RoKiRXb3JkUmF0aW9FcHNpbG9uKSkgeyRUWyRfXSA9ICRUbXBbJFRtcEluZGV4XTskVG1wSW5kZXgrK30NCiAgICAgICAgICAgICAgICB9DQogICAgICAgICAgICAgICAgaWYgKCRUbXBJbmRleCAtbGUgKCRUbXAuY291bnQtMSkpIHskVFskVG1wSW5kZXhdID0gJFRtcFsoJFRtcEluZGV4KS4uKCRUbXAuY291bnQtMSldIC1qb2luKCJ8Iil9DQogICAgICAgICAgICB9DQogICAgICAgICAgICAkcncgPSAkU3RhY2tUYWJsZS5OZXdSb3coKQ0KICAgICAgICAgICAgZm9yZWFjaCAoJFJUIGluICgwLi4oJENvbG1uLmNvdW50LTEpKSkgew0KICAgICAgICAgICAgICAgICRydy4oJENvbG1uWyRSdF0pID0gKCRUWyRydF0rIiAiKS50cmltKCkNCiAgICAgICAgICAgIH0NCiAgICAgICAgICAgICRTdGFja1RhYmxlLlJvd3MuQWRkKCRydykNCiAgICAgICAgfQ0KICAgICAgICByZXR1cm4gJFN0YWNrVGFibGUNCiAgICB9DQp9CgpmdW5jdGlvbiBDbGVhci1MaW5lIHsNCiAgICAkTm0gPSAkSG9zdC5VSS5SYXdVSS5XaW5kb3dTaXplLldpZHRoLTENCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmUgIiQoKCJgYiIqJE5NKSsoIiAiKiROTSkrKCJgYiIqJE5NKSkiDQp9CgpmdW5jdGlvbiBBUC1SZXF1aXJlIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW0FsaWFzKCJGdW5jdGlvbmFsaXR5IiwiTGlicmFyeSIpXVtTdHJpbmddJExpYiwgW1NjcmlwdEJsb2NrXSRPbkZhaWw9e30sIFtTd2l0Y2hdJFBhc3N0aHJ1KQ0KDQogICAgW2Jvb2xdJFN0YXQgPSAkKHN3aXRjaCAtcmVnZXggKCRMaWIudHJpbSgpKSB7DQogICAgICAgICJeSW50ZXJuZXQiICB7dGVzdC1jb25uZWN0aW9uIGdvb2dsZS5jb20gLUNvdW50IDEgLVF1aWV0fQ0KICAgICAgICAiXmRlcDooLiopIiAge2lmICgkTWF0Y2hlc1sxXSAtbmUgIndoZXJlIil7QVAtUmVxdWlyZSAiZGVwOndoZXJlIiB7JE1PREU9Mn19ZWxzZXskTU9ERT0yfTtpZiAoJE1PREUtMil7R2V0LVdoZXJlICRNYXRjaGVzWzFdfWVsc2V7dHJ5eyYgJE1hdGNoZXNbMV0gIi9mamZkamZkcyAtLWRzamFoZGhzIC1kc2phZGoiIDI+JG51bGw7InN1Y2MifWNhdGNoe319fQ0KICAgICAgICAiXmZ1bmN0aW9uOiguKikiICB7Z2NtICRNYXRjaGVzWzFdIC1lYSBTaWxlbnRseUNvbnRpbnVlfQ0KICAgICAgICAiXnN0cmljdF9mdW5jdGlvbjooLiopIiAge1Rlc3QtUGF0aCAiRnVuY3Rpb246XCQoJE1hdGNoZXNbMV0pIn0NCiAgICB9KQ0KICAgIGlmICghJFN0YXQpIHskT25GYWlsLkludm9rZSgpfQ0KICAgIGlmICgkUGFzc3RocnUpIHtyZXR1cm4gJFN0YXR9DQp9CgpmdW5jdGlvbiBMb2FkaW5nLU1lc3NhZ2Ugew0KICAgIFtDbWRsZXRCaW5kaW5nKCldcGFyYW0oW1N0cmluZ10kVGV4dCA9ICJMb2FkaW5nIiwgW2NoYXJdJGMgPSAnLicsW0FsaWFzKCJDeWNsZXMiLCJDeWNsZXNQZXJCdWZmZXIiKV1bZGVjaW1hbF0kQ1BCPTEyNTAwLFtQYXJhbWV0ZXIoVmFsdWVGcm9tUGlwZWxpbmU9JFRydWUpXSREYXRhU3RyZWFtLFtTd2l0Y2hdJE91dE51bGwpDQogICAgQmVnaW4geyRCUCA9IFtDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZTtbQ29uc29sZV06OkN1cnNvclZpc2libGUgPSAkRmFsc2U7JERvdCA9ICIiOyRDVCA9IDA7JENQQl9Ob3JtPVtNYXRoXTo6TWF4KCRDUEIsMSk7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAkVGV4dDtpZiAoJENQQiAtbHQgMCkge3Rocm93ICJWYWx1ZSBvZiBDUEIgY2Fubm90IGJlIGxlc3MtdGhhbi1vci1lcSB0byAwLiI7cmV0dXJufX0NCiAgICBQcm9jZXNzIHsNCiAgICAgICAgMS4uW01hdGhdOjpNYXgoKDEvJENQQiksMSkgfCAlIHsNCiAgICAgICAgICAgICRMRCA9ICREb3QNCiAgICAgICAgICAgICREb3QgPSAiICRjIiooW1N5c3RlbS5NYXRoXTo6Rmxvb3IoJENULyRDUEJfTm9ybSklNCkNCiAgICAgICAgICAgIGlmICgkRG90IC1uZSAkTEQpIHsNCiAgICAgICAgICAgICAgICBbQ29uc29sZV06OkN1cnNvckxlZnQgPSAkVGV4dC5MZW5ndGg7V3JpdGUtSG9zdCAtZiBZZWxsb3cgLU5vTmV3TGluZSAiJERvdCQoIiAiKig2LSREb3QuTGVuZ3RoKSkiDQogICAgICAgICAgICB9DQogICAgICAgICAgICAkQ1QrKw0KICAgICAgICAgICAgaWYgKCRDUEIgLWx0IDEpIHtzbGVlcCAtbSAyMDB9DQogICAgICAgIH0NCiAgICAgICAgaWYgKCEkT3V0TnVsbCkgeyREYXRhU3RyZWFtfQ0KICAgIH0NCiAgICBFTkQge1tDb25zb2xlXTo6Q3Vyc29yVmlzaWJsZSA9ICRCcDtydiBET1QsQ1Q7Q2xlYXItTGluZX0NCn0KCmZ1bmN0aW9uIFdyaXRlLUFQIHtwYXJhbShbUGFyYW1ldGVyKE1hbmRhdG9yeT0kVHJ1ZSldW1N0cmluZ10kVGV4dCwgW1N3aXRjaF0kTm9TaWduLCBbU3dpdGNoXSRQbGFpblRleHQsIFtWYWxpZGF0ZVNldCgiQ2VudGVyIiwiUmlnaHQiLCJMZWZ0IildW1N0cmluZ10kQWxpZ249J0xlZnQnKQ0KDQogICAgaWYgKCEkdGV4dCAtb3IgJHRleHQgLW1hdGNoICJeW1wrXC1cIVwqeFw+IF0rJCIpIHtyZXR1cm59DQogICAgJGFjYyAgPSBAKCgnKycsJzInKSwoJy0nLCcxMicpLCgnIScsJzE0JyksKCcqJywnMycpKQ0KICAgICR0YiAgID0gJyc7JGZ1bmMgICA9ICRmYWxzZQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJ3gnKSB7JGZ1bmMgPSAkdHJ1ZTsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgIHdoaWxlICgkVGV4dC5jaGFycygwKSAtZXEgJz4nKSB7JHRiICs9ICIgICAgIjsgJFRleHQgPSAkVGV4dC5zdWJzdHJpbmcoMSkudHJpbSgpfQ0KICAgICRTaWduID0gJFRleHQuY2hhcnMoMCkNCiAgICAkVGV4dCA9ICRUZXh0LnN1YnN0cmluZygxKS50cmltKCkucmVwbGFjZSgnL3hcJywnJykucmVwbGFjZSgnWy5dJywnW0N1cnJlbnQgRGlyZWN0b3J5XScpDQogICAgJHZlcnMgPSAkZmFsc2UNCiAgICBmb3JlYWNoICgkYXIgaW4gJGFjYykge2lmICgkYXJbMF0gLWVxICRzaWduKSB7JHZlcnMgPSAkdHJ1ZTsgJGNsciA9ICRhclsxXTsgJFNpZ24gPSAiWyR7U2lnbn1dICJ9fQ0KICAgIGlmICghJHZlcnMpIHtUaHJvdyAiSW5jb3JyZWN0IFNpZ24gWyRTaWduXSBQYXNzZWQhIn0NCiAgICBBUC1SZXF1aXJlICJmdW5jdGlvbjpBbGlnbi1UZXh0IiB7ZnVuY3Rpb24gQWxpZ24tVGV4dCgkYWxpZ24sJHRleHQpIHskdGV4dH19DQogICAgJERhdGEgPSBBbGlnbi1UZXh0IC1BbGlnbiAkQWxpZ24gJHRiJChpZiAoISROb1NpZ24pIHskU2lnbn0pJFRleHQNCiAgICBpZiAoJFBsYWluVGV4dCkge3JldHVybiAkRGF0YX0NCiAgICBXcml0ZS1Ib3N0IC1Ob05ld0xpbmU6JGZ1bmMgLWYgJGNsciAkRGF0YQ0KfQoKZnVuY3Rpb24gU2l6ZS1BZGoge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSR0cnVlKV1bRG91YmxlXSRCeXRlcywgW1N3aXRjaF0kQnlUaG91c2FuZCkNCg0KICAgICRCVCA9ID86KCRCeVRob3VzYW5kKXsxMDAwfXsxMDI0fQ0KICAgICRTaXplcyA9IEAoIiIsIksiLCJNIiwiRyIsIlQiLCJQIiwiRSIsIloiLCJZIikNCiAgICAkRGVnID0gW1N5c3RlbS5NYXRoXTo6Rmxvb3IoW01hdGhdOjpMb2coJGJ5dGVzLCRCVCkpDQogICAgJERlZyA9ID86KCREZWcgLWdlICRTaXplcy5jb3VudCl7JFNpemVzLmNvdW50LTF9eyREZWd9DQogICAgJFJldCA9ICJ7MH0iIC1mIFtTeXN0ZW0uTWF0aF06OlJvdW5kKCRCeXRlcy8oW01hdGhdOjpQb3coJEJULCREZWcpKSwyKQ0KICAgIGlmICgkcmV0IC1lcSAiTmFOIikge3JldHVybiAkcmV0fQ0KICAgIFJldHVybiAiJHJldCAkKCRTaXplc1skRGVnXSlCIg0KfQoKZnVuY3Rpb24gU3RhY2tlciB7cGFyYW0oW1BhcmFtZXRlcihNYW5kYXRvcnk9JFRydWUpXVtPYmplY3RbXV0kRGF0YSwgW0ludDMyXSRTcGFjZT0kRF9TcGFjZSwgW1N3aXRjaF0kVHJpbT0kZmFsc2UsIFtBbGlhcygiVGFiIiwiQnlUYWIiLCJUYWJiZWQiLCJCVCIpXVtTd2l0Y2hdJEJ5VGFiYmluZz0kZmFsc2UpDQoNCiAgICBpZiAoJFNwYWNlIC1sdCAxKSB7dGhyb3cgIlRoZSBTcGFjZSBWYXJpYWJsZSBjYW5ub3QgYmUgbGVzcyB0aGFuIDEiO2V4aXR9DQogICAgW1N0cmluZ10kQnVmZmVyID0gIiI7ICRkaXYgPSAnfC0oXysjK18pLXwnOyAkRElWWCA9ICdbW1svfF8rX3xcXV1dJw0KIyAgICAkRGF0YSB8ICUgeyRCdWZmZXIgKz0gIiQoIiRfIi5yZXBsYWNlKCJgbiIsJERpdikpJERpdiJ9DQogICAgJEZpbGUgPSAiJGVudjp0ZW1wXCQoR2V0LVJhbmRvbSktU3RhY2sudHh0Ig0KICAgICREYXRhID4gJEZpbGUNCiAgICAkQnVmZmVyID0gW0lPLkZpbGVdOjpSZWFkQWxsTGluZXMoJGZpbGUpIC1qb2luKCREaXYpDQogICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiYG4iLCREaXYpDQogICAgZGVsIC1Gb3JjZSAkRmlsZSB8IG91dC1udWxsDQogICAgaWYgKCRCeVRhYmJpbmcpIHsNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIudHJpbSgkRGl2KQ0KICAgICAgICAkQnVmZmVyID0gJEJ1ZmZlci5yZXBsYWNlKCIkRGl2IiozLCREaXYpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKjIsJERpdikNCiAgICAgICAgJEJ1ZmZlciA9ICRCdWZmZXIucmVwbGFjZSgiJERpdiAiLCIkRElWWCIpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiLCJgbiIpDQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiRESVZYIiwiJERpdiAiKQ0KICAgICAgICBbU3RyaW5nW11dICRCdWZmZXJDID0gJEJ1ZmZlci5zcGxpdCgiYG4iKQ0KICAgIH0gZWxzZSB7DQogICAgICAgICRCdWZmZXIgPSAkQnVmZmVyLnJlcGxhY2UoIiREaXYiKiRTcGFjZSwiYG4iKQ0KICAgICAgICBbT2JqZWN0W11dICRCdWZmZXJDID0gJEJ1ZmZlci5zcGxpdCgiYG4iKQ0KICAgICAgICBpZiAoISgkQnVmZmVyQ1stMV0pKSB7JEJ1ZmZlckMgPSAkQnVmZmVyQ1swLi4oJEJ1ZmZlckMuTGVuZ3RoLTIpXX0NCiAgICB9DQogICAgJEJ1ZmZlckNbMF0gPSAkQnVmZmVyQ1swXS50cmltc3RhcnQoIiREaXYiKQ0KICAgICRCdWZmZXJDID0gJEJ1ZmZlckMgfCAlIHtpZiAoJHRyaW0pIHskXy50cmltKCREaXYpfSBlbHNlIHskX319IHwgJSB7JF8ucmVwbGFjZSgkRGl2LCJgbiIpfSB8ICUgeyRffQ0KICAgIHJldHVybiAkQnVmZmVyQw0KIyAgICBbT2JqZWN0W11bXV0gJEJ1ZmZlckY7DQojICAgIGZvciAoJGkgPSAwOyAkaSAtbHQgJEJ1ZmZlckMuY291bnQ7JGkrKykgew0KIyAgICAgICAgJERUU3RyZWFtID0gKCRCdWZmZXJDWyRpXSkuc3BsaXQoImBuIikNCiMgICAgICAgICRCdWZmZXJGICs9IEAoJERUU3RyZWFtWzBdKQ0KIyAgICAgICAgZm9yICgkaiA9IDE7JGogLWx0ICREVFN0cmVhbS5jb3VudDsgJGorKykgew0KIyAgICAgICAgICAgICRCdWZmZXJGWyRJXSArPSAkRFRTdHJlYW1bJGpdDQojIyAgICAgICAgICAgICItLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIg0KIyAgICAgICAgfQ0KIyMgICAgICAgICJ4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4Ig0KIyAgICB9DQojIyAgICBSZXR1cm4gJEJ1ZmZlckYNCn0KCmZ1bmN0aW9uIElOLUNvZGUtRGVidWctQ29uc29sZSB7V3JpdGUtSG9zdCAtZiB5ZWxsb3cgJ1tBUC1DT01QSUxFUl0gTW9kdWxlIFtJTi1Db2RlLURlYnVnLUNvbnNvbGVdIGRpc2FibGVkIGZvciB0aGlzIHByb2dyYW0nfQoKZnVuY3Rpb24gQ29udmVydC1Ub0Jhc2U2NCB7cGFyYW0oW1N0cmluZ10kVGV4dCwgW1ZhbGlkYXRlU2V0KCJVVEY4IiwiVW5pY29kZSIpXVtTdHJpbmddJEVuY29kaW5nID0gIlVURjgiKQ0KDQogICAgW1N5c3RlbS5Db252ZXJ0XTo6VG9CYXNlNjRTdHJpbmcoW1N5c3RlbS5UZXh0LkVuY29kaW5nXTo6JEVuY29kaW5nLkdldEJ5dGVzKCRUZXh0KSkNCn0KCmZ1bmN0aW9uIEFQLVJlcXVpcmUge3BhcmFtKFtQYXJhbWV0ZXIoTWFuZGF0b3J5PSRUcnVlKV1bQWxpYXMoIkZ1bmN0aW9uYWxpdHkiLCJMaWJyYXJ5IildW1N0cmluZ10kTGliLCBbU2NyaXB0QmxvY2tdJE9uRmFpbD17fSwgW1N3aXRjaF0kUGFzc3RocnUpDQoNCiAgICBbYm9vbF0kU3RhdCA9ICQoc3dpdGNoIC1yZWdleCAoJExpYi50cmltKCkpIHsNCiAgICAgICAgIl5JbnRlcm5ldCIgIHt0ZXN0LWNvbm5lY3Rpb24gZ29vZ2xlLmNvbSAtQ291bnQgMSAtUXVpZXR9DQogICAgICAgICJeZGVwOiguKikiICB7aWYgKCRNYXRjaGVzWzFdIC1uZSAid2hlcmUiKXtBUC1SZXF1aXJlICJkZXA6d2hlcmUiIHskTU9ERT0yfX1lbHNleyRNT0RFPTJ9O2lmICgkTU9ERS0yKXtHZXQtV2hlcmUgJE1hdGNoZXNbMV19ZWxzZXt0cnl7JiAkTWF0Y2hlc1sxXSAiL2ZqZmRqZmRzIC0tZHNqYWhkaHMgLWRzamFkaiIgMj4kbnVsbDsic3VjYyJ9Y2F0Y2h7fX19DQogICAgICAgICJeZnVuY3Rpb246KC4qKSIgIHtnY20gJE1hdGNoZXNbMV0gLWVhIFNpbGVudGx5Q29udGludWV9DQogICAgICAgICJec3RyaWN0X2Z1bmN0aW9uOiguKikiICB7VGVzdC1QYXRoICJGdW5jdGlvbjpcJCgkTWF0Y2hlc1sxXSkifQ0KICAgIH0pDQogICAgaWYgKCEkU3RhdCkgeyRPbkZhaWwuSW52b2tlKCl9DQogICAgaWYgKCRQYXNzdGhydSkge3JldHVybiAkU3RhdH0NCn0K")))
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
            <#@=======================================|.net:27;.eu:2;.us:12;.co:0;net.us:0;.in:3;z.eu:3;z.us:26;co.us:4;.com:1|=======================================@#>
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
        pushd $Folder;$Fmt=1
        $Filter = "^((\[Songs.pk\] *(?<name>.+)\.(?<ext>.+)|(?<name>.+?) *\[Songspk.name\])\.(?<ext>.+))$"
        $Files = ((ls -file) -match $Filter).Name
        if (!$Files) {Write-AP "!All songs seem formatted";popd;Return}
        $Keywords = @{}
        Write-AP "*Calcuating Movies Names"
        $Files | ? {$_ -match $Filter} | % {$Matches['name','ext'] -join "."} | % {
            $Data = $_ -replace "\.m(p3/4a)" -replace " {2,}"," " -replace(" ?- ?","|")
            $Data = "|$($Data.Trim())|"
            0..9   | % {$Data = $Data.replace("|0$_|","|")}
            10..50 | % {$Data = $Data.replace("|$_|","|")}
            $Data.trim(" ","|").split("|") | % {$Keywords.$_++}
        }
        $Movies = @();$KeyWords.GetEnumerator() | ? {$_.Value -gt 3} | % {$Movies += ,$_.Key}
        if ($Movies.count -gt 0) {
            Write-AP "+Found $($Movies.Count) Movie$(if ($Movies.Count -gt 1) {'s'})!"
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


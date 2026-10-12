
from http.server import BaseHTTPRequestHandler, HTTPServer
import json
from datetime import datetime, timezone


class CloudOpsHandler(BaseHTTPRequestHandler):

    def do_GET(self):
        if self.path == "/health":
            response = {
                "project": "CloudOps Enterprise Platform",
                "status": "healthy",
                "timestamp": datetime.now(timezone.utc).isoformat()
            }

            self.send_response(200)
            self.send_header("Content-Type", "application/json")
            self.end_headers()
            self.wfile.write(json.dumps(response).encode())

        else:
            html = """
            <!DOCTYPE html>
            <html>
            <head>
                <title>CloudOps Enterprise Platform</title>
            </head>
            <body>
                <h1>CloudOps Enterprise Platform</h1>
                <p>Welcome! Your application is running.</p>
                <p>Module 1: Cloud Infrastructure</p>
                <a href="/health">Check Application Health</a>
            </body>
            </html>
            """

            self.send_response(200)
            self.send_header("Content-Type", "text/html; charset=utf-8")
            self.end_headers()
            self.wfile.write(html.encode())


server = HTTPServer(("0.0.0.0", 8000), CloudOpsHandler)

print("CloudOps application running on port 8000")
server.serve_forever()

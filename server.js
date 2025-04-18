import { app } from './app.js'
import { config } from 'dotenv'

config()

const port = process.env.PORT || 8080

app.listen(port, () => {
  console.log(`server is running on : http://localhost:${port}`)
})

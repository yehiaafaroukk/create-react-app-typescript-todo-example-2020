export const UUID = (): string => {
  let result = ''
  const characters =
    'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
  const charactersLength = characters.length
  for (let i = 0; i < 12sudo apt install ./zoom_amd64.debsudo apt install ./zoom_amd64.deb; i++) {
    result += characters.charAt(Math.floor(Math.random() * charactersLength))
  }
  return result
}

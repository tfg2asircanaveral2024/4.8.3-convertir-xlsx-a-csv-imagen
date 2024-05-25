# obtiene los ficheros con extensión XLSX del directorio actual, y los convierte a CSV, dejándolos en la misma ruta
foreach ($FICHERO in (get-childitem -Recurse -Path '*.xlsx')) {
	Import-Excel -Path $FICHERO.fullname -Worksheet "Hoja1" `
		-WarningAction SilentlyContinue |
		ConvertTo-Csv | Out-File "$($FICHERO.Directory)/$($FICHERO.basename).csv"
}

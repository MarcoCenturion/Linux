import PyPDF2

pdf_file = open("~/Descargas/Rezerwacja 12 listopada dla VIVIANA MARIA STOFFEL.pdf")

pdf_read = PyPDF2.PdfFileReader(pdf_file)

print(pdf_reader.documentInfo)

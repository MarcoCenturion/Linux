from fpdf import FPDF

title = '20000 Leagues Under the Seas'

class PDF(FPDF):
    def header(self):
        # Arial bold 15
        self.set_font('Arial', 'B', 15)
        # Calcular ancho del texto (title) y establecer posición
        w = self.get_string_width(title) + 6
        self.set_x((210 - w) / 2)
        # Colores del marco, fondo y texto
        self.set_draw_color(0, 80, 180)
        self.set_fill_color(230, 230, 0)
        self.set_text_color(220, 50, 50)
        # Grosor del marco (1 mm)
        self.set_line_width(1)
        # Titulo
        self.cell(w, 9, title, 1, 1, 'C', 1)
        # Salto de línea
        self.ln(10)

    def footer(self):
        # Posición a 1.5 cm desde abajo
        self.set_y(-15)
        # Arial italic 8
        self.set_font('Arial', 'I', 8)
        # Color de texto en gris
        self.set_text_color(128)
        # Numero de pagina
        self.cell(0, 10, 'Page ' + str(self.page_no()), 0, 0, 'C')

    def chapter_title(self, num, label):
        # Arial 12
        self.set_font('Arial', '', 12)
        # Color de fondo
        self.set_fill_color(200, 220, 255)
        # Titulo
        self.cell(0, 6, 'Chapter %d : %s' % (num, label), 0, 1, 'L', 1)
        # Salto de línea
        self.ln(4)

    def chapter_body(self, name):
        # Leer archivo de texto
        with open(name, 'rb') as fh:
            txt = fh.read().decode('latin-1')
        # Times 12
        self.set_font('Times', '', 12)
        # Emitir texto justificado
        self.multi_cell(0, 5, txt)
        # Salto de línea
        self.ln()
        # Mención en italic -cursiva-
        self.set_font('', 'I')
        self.cell(0, 5, '(end of excerpt)')

    def print_chapter(self, num, title, name):
        self.add_page()
        self.chapter_title(num, title)
        self.chapter_body(name)

pdf = PDF()
pdf.set_title(title)
pdf.set_author('Jules Verne')
pdf.print_chapter(1, 'A RUNAWAY REEF', '20k_c1.txt')
pdf.print_chapter(2, 'THE PROS AND CONS', '20k_c2.txt')
pdf.output('tuto3.pdf', 'F')

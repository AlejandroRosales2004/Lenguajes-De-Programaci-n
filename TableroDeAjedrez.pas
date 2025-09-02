program TableroAjedrez;
uses crt;

var
  fila, columna: integer;
  casilla: char;

begin
  clrscr;
  textbackground(black);
  
  { Dibujar coordenadas de columnas (letras) }
  writeln('   A B C D E F G H');
  
  { Dibujar tablero }
  for fila := 8 downto 1 do
  begin
    write(' ', fila, ' '); { Coordenada de fila }
    
    for columna := 1 to 8 do
    begin
      { Alternar colores de casillas }
      if (fila + columna) mod 2 = 0 then
        textbackground(white)    { Casillas claras }
      else
        textbackground(brown);   { Casillas oscuras }
      
      { Dibujar espacio en blanco como contenido de la casilla }
      write(' ');
      textbackground(black);
      write(' ');
    end;
    
    write(' ', fila); { Coordenada de fila al final }
    writeln;
  end;
  
  { Dibujar coordenadas de columnas (letras) }
  writeln('   A B C D E F G H');
  
  readkey;
end.
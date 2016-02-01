\documentclass{standalone}
\usepackage{pstricks,auto-pst-pdf}
\usepackage{pst-all}
\usepackage{pst-func}
\begin{document}
\definecolor{brightgreen}{HTML}{66FF00}
\definecolor{brightpink}{HTML}{FF007F}
\begin{pspicture}[showgrid=false](-3,-1)(3,5)
  \rput[tc](0,2.7){Standardized $t$ Distribution}

  \psset{yunit=6cm,xunit=1.5cm}
  \psaxes[linecolor=black,Dx=1,ticks=none,labels=none,yAxis=false]{-}(0,0)(-3.5,0)(3.5,1.25)
  \psTDist[sigma=1.0,nue=17]{-3.5}{3.5}
  
  % \psline[linewidth=0.8\pslinewidth]{->}(-3.0,0.03)(-3.3,0.03)
  % \rput[tc](0,-0.20){$t$ score ($\sigma_{\bar{x}}$)}
  \rput[tc](0,-0.20){$t$ score}
  
  
  % Division line
  \psline[linecolor=brightpink]( 1.51,-0.1)( 1.51,0.2)
  \rput[tc,linecolor=brightpink]( 1.51,-0.15){$t_{\mbox{obs}}$}
  % Filled region
  \pscustom[linestyle=none,fillcolor=brightpink,fillstyle=solid]{%
    \psline(-3.5,0)(-1.51,0)
    \psTDist[sigma=1.0,nue=17]{-1.51}{-3.5}
  }
  \pscustom[linestyle=none,fillcolor=brightpink,fillstyle=solid]{%
    \psline(3.5,0)(1.51,0)
    \psTDist[sigma=1.0,nue=17]{1.51}{3.5}
  }
  % t crit line
  \psline[linecolor=brightgreen](-2.11,-0.1)(-2.11,0.4)
  \rput[tr](-2.11,0.25){$-t_{0.05 (2), df}$}
  \psline[linecolor=brightgreen](2.11,-0.1)(2.11,0.4)
  \rput[tl](2.11,0.25){$t_{0.05 (2), df}$}
\end{pspicture}
\end{document}

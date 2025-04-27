const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#120d15", /* black   */
  [1] = "#A7445A", /* red     */
  [2] = "#314F8E", /* green   */
  [3] = "#5C6895", /* yellow  */
  [4] = "#A1778D", /* blue    */
  [5] = "#7289BB", /* magenta */
  [6] = "#A291A6", /* cyan    */
  [7] = "#d8ccd6", /* white   */

  /* 8 bright colors */
  [8]  = "#978e95",  /* black   */
  [9]  = "#A7445A",  /* red     */
  [10] = "#314F8E", /* green   */
  [11] = "#5C6895", /* yellow  */
  [12] = "#A1778D", /* blue    */
  [13] = "#7289BB", /* magenta */
  [14] = "#A291A6", /* cyan    */
  [15] = "#d8ccd6", /* white   */

  /* special colors */
  [256] = "#120d15", /* background */
  [257] = "#d8ccd6", /* foreground */
  [258] = "#d8ccd6",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;

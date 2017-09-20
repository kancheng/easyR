<!DOCTYPE html>
<html>
        <head>
                <title></title>
        </head>
        <script type="text/javascript">

        </script>
        <style type="text/css">
                .docu {
                        text-align : center;
                }

        </style>
        <body>
        <!-- docu -->
        <div class = "docu">
        <form action='R.php' method='get'>
            input n value : <input type='text' name='n' />
                <input type='submit' />
        </form>
    <?php
        if(isset($_GET['n'])) {
        $n = $_GET['n'];

        /* $str = '"C:\Program Files\R\R-[版本]\bin\Rscript"' . ' .\[所要執行的 R 檔名].R' ." $[物件]";*/
         $str = '"C:\Program Files\R\R-3.4.1\bin\Rscript"' . ' .\script.R' ." $n";

        /* 以外部指令的方式呼叫 R 進行繪圖 */

            shell_exec($str);        
        /* 產生亂數 */
        $nocache = rand();

        /* 輸出圖檔 */
        echo("<img src='output/hist.png?$nocache' />");
        }
    ?>
        </div>
        </body>
</html>
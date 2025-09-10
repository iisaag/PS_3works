<?php
function calcularTotalComDesconto(array $precos, float $desconto): float {
    $total = 0;
    foreach ($precos as $preco) {
        $total += $preco * (1 - $desconto);
    }
    return $total;
}


$lista_precos = [305, 270, 30];
$desconto = 0.20;
echo "Total com desconto: " . calcularTotalComDesconto($lista_precos, $desconto);
?>

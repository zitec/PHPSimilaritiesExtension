namespace Similarities\Tanh;
use Similarities\Similarity;

// decorator
class MaxCommonTanhDecorator extends Similarity {

    protected tanhArrays;

    // de verificat ca similarity sa fie de tip TanhArrays
    public function __construct(tanhArrays) {
        let this->tanhArrays = tanhArrays;
    }

    // de accesat commonItems si data1, data2, etc prin getteri
    public function get() -> double {
        var tanhSimilarity, maxCommonTanh, commonItems, maxCommonItems;
        
        let commonItems = this->tanhArrays->getCommonItems();
        let maxCommonItems = this->tanhArrays->getMaxCommonItems();
        let tanhSimilarity = this->tanhArrays->get();
        let maxCommonTanh = tanhSimilarity * (commonItems / maxCommonItems);
        return maxCommonTanh;
    }

}
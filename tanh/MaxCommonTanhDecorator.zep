namespace Similarities\Tanh;
use Similarities\Similarity;

// decorator
class MaxCommonTanhDecorator extends Similarity {

    protected tanhArrays;

    public function __construct(tanhArrays) {
        if(!(tanhArrays instanceof TanhArrays)) {
            throw new \InvalidArgumentException("Argument tanhArrays must be of type TanhArrays");
        }
        let this->tanhArrays = tanhArrays;
    }

    public function get() -> double {
        var tanhSimilarity, maxCommonTanh, commonItems, maxCommonItems;
        
        let commonItems = this->tanhArrays->getCommonItems();
        let maxCommonItems = this->tanhArrays->getMaxCommonItems();
        let tanhSimilarity = this->tanhArrays->get();
        let maxCommonTanh = tanhSimilarity * (commonItems / maxCommonItems);
        return maxCommonTanh;
    }

}
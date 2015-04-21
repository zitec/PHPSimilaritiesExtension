namespace Similarities\Tanh;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class MaxCommonTanhArrays extends Similarity {

    protected maxCommonTanhDecortor;
    
    public function __construct(array data1, array data2) {
        let this->maxCommonTanhDecortor = new MaxCommonTanhDecorator(new TanhArrays(data1, data2));
    }
    
    public function get() -> double {
        return this->maxCommonTanhDecortor->get();
    }
}
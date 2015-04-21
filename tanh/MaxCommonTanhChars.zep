namespace Similarities\Tanh;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class MaxCommonTanhChars extends Similarity {

    protected maxCommonTanhDecorator;
    
    public function __construct(string data1, string data2) {
        var charCount, textOperations;

        let textOperations = new TextOperations(data1, data2);
        let charCount = textOperations->getCharCount();
        let this->maxCommonTanhDecorator = new MaxCommonTanhDecorator(new TanhArrays(charCount[0], charCount[1]));
    }
    
    public function get() -> double {
        return this->maxCommonTanhDecorator->get();
    }
}
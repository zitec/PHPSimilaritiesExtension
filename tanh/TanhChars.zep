namespace Similarities\Tanh;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class TanhChars extends Similarity {
    
    protected tanhArrays;
    
    /**
     * @param string $data1
     * @param string $data2
     */
    public function __construct(string data1, string data2) {
        var textOperations, charCount;
        let textOperations = new TextOperations(data1, data2);
        let charCount = textOperations->getCharCount();
        let this->tanhArrays = new TanhArrays(charCount[0], charCount[1]);
    }
    
    public function get() {
        return this->tanhArrays->get();
    }
}
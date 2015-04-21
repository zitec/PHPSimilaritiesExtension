namespace Similarities\Tanh;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class TanhWords extends Similarity {
    
    protected tanhArrays;
    
    /**
     * @param string $data1
     * @param string $data2
     */
    public function __construct(string data1, string data2, separator = " ") {
        var textOperations, wordCount;
        let textOperations = new TextOperations(data1, data2);
        textOperations->setWordSeparator(separator);
        let wordCount = textOperations->getWordCount();
        let this->tanhArrays = new TanhArrays(wordCount[0], wordCount[1]);
    }
    
    public function get() {
        return this->tanhArrays->get();
    }
}
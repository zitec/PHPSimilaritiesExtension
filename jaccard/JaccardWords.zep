namespace Similarities\Jaccard;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class JaccardWords extends Similarity {
    
    protected jaccardArrays;
    
    public function __construct(string data1, string data2, string separator = " ") {
        var wordArray1, wordArray2;
        let wordArray1 = explode(separator, data1);
        let wordArray2 = explode(separator, data2);
        let this->jaccardArrays = new JaccardArrays(wordArray1, wordArray2);
    }
    
    public function get() {
        return this->jaccardArrays->get();
    }
}
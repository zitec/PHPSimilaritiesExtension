namespace Similarities\Jaccard;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class JaccardChars extends Similarity {
    
    protected jaccardArrays;

    public function __construct(string data1, string data2) {
        let this->jaccardArrays = new JaccardArrays(str_split(data1), str_split(data2));
    }
    
    public function get() {
        return this->jaccardArrays->get();
    }
}
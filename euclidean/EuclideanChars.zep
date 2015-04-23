namespace Similarities\Euclidean;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class EuclideanChars extends Similarity {
    
    protected euclideanArrays;
    
    public function __construct(string data1, string data2) {
        var textOperations, charFrequency;
        let textOperations = new TextOperations(data1, data2);
        let charFrequency = textOperations->getCharFrequencies();
        let this->euclideanArrays = new EuclideanArrays(charFrequency[0], charFrequency[1]);
    }
    
    public function get() {
        return this->euclideanArrays->get();
    }
}
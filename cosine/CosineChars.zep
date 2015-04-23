namespace Similarities\Cosine;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class CosineChars extends Similarity {
    
    protected cosineArrays;

    public function __construct(string data1, string data2) {
        var textOperations, charFrequency;
        let textOperations = new TextOperations(data1, data2);
        let charFrequency = textOperations->getCharFrequencies();
        let this->cosineArrays = new CosineArrays(charFrequency[0], charFrequency[1]);
    }
    
    public function get() {
        return this->cosineArrays->get();
    }
}
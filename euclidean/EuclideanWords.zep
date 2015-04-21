namespace Similarities\Euclidean;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class EuclideanWords extends Similarity {
    
    protected euclideanArrays;
    
    public function __construct(string data1, string data2, string separator = " ") {
        var textOperations, wordFrequency;
        let textOperations = new TextOperations(data1, data2);
        textOperations->setWordSeparator(separator);
        let wordFrequency = textOperations->getWordFrequencies();
        let this->euclideanArrays = new EuclideanArrays(wordFrequency[0], wordFrequency[1]);
    }
    
    public function get() {
        return this->euclideanArrays->get();
    }
}
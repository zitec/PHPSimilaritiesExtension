namespace Similarities\Tanh;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class MaxCommonTanhWords extends Similarity {

    protected maxCommonTanhDecorator;
    
    public function __construct(string data1, string data2, separator = " ") {
        var wordCount, textOperations;

        let textOperations = new TextOperations(data1, data2);
        textOperations->setWordSeparator(separator);
        let wordCount = textOperations->getWordCount();
        let this->maxCommonTanhDecorator = new MaxCommonTanhDecorator(new TanhArrays(wordCount[0], wordCount[1]));
    }
    
    public function get() -> double {
        return this->maxCommonTanhDecorator->get();
    }
}
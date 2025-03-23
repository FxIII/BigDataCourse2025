from mrjob.job import MRJob
import re


class MRWordFrequencyCount(MRJob):
    log_pattern = re.compile(r'(?P<ip>[\d\.]+) - - \[(?P<date>.+?)\] '
                             r'"(?P<method>\w+) (?P<path>.+?) (?P<protocol>.+?)"'
                             r' (?P<status>\d{3}) (?P<size>\d+|-) '
                             r'\"(?P<url>[^\"]+)\" \"(?P<agent>[^\"]+)\"')

    def mapper(self, _, line):
        match = self.log_pattern.match(line)
        if match:
            data = match.groupdict()
            if "/2024" in data['date']:
                yield data['path'], 1

    def reducer(self, key, values):
        yield key, sum(values)


if __name__ == '__main__':
    MRWordFrequencyCount.run()

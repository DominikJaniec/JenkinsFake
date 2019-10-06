using System;
using System.Collections.Generic;
using Example.Domain;
using Xunit;

namespace Example.UnitTests
{
    public class LibraryTests
    {
        public static IEnumerable<object[]> AddThemDataSource()
        {
            yield return new object[] { 0.0m, 0.0m, 0.0m };
            yield return new object[] { 0.0m, 0.1m, 0.1m };
            yield return new object[] { 0.1m, 0.1m, 0.2m };
            yield return new object[] { 0.1m, 0.2m, 0.3m };
        }

        [Theory]
        [MemberData(nameof(AddThemDataSource))]
        public void AddThem_ShouldNotWorkLikeFloat(decimal a, decimal b, decimal result)
            => Assert.Equal(
                expected: result,
                actual: Library.AddThem(a, b));

        [Fact]
        public void GetAnswer_ShouldReturns_TheAnswerToTheUltimateQuestionOfLifeTheUniverseAndEverything()
            => Assert.Contains(
                expectedSubstring: "42",
                actualString: Library.GetAnswer());
    }
}

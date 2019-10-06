using System;
using Xunit;

namespace Example.UnitTests
{
    public class JustUnitTests
    {
        [Fact]
        public void JustTest1()
            => Assert.Equal(
                expected: 4,
                actual: 2 + 2);
    }
}

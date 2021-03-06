
Class fbt.Pass Extends %Persistent
{	
	Relationship match as fbt.Game [Cardinality = one, Inverse = passes];
	/// start pass
	Property vecStart As fbt.Point [Required ];
	Property vecEnd As fbt.Point [Required ];
	/// happend between players
	Property fromPlayer As fbt.Player [Required ];
	Property toPlayer As fbt.Player;
	/// Timing
	Property startTime As %Integer [Required ];
	Property duration As %Integer [Required ];
	Property speed As %Decimal [Required ];
	Property Scored As %Boolean;
	Property inField As %Boolean;
	///0 = Any, 1 = 1q & 2q, 2 = 2q & 3q 3 = 3q & 4q 4 = 4q & 1q
	Property sector As %Integer;
	
	/// speed, time generation
	Method genSpeedTime() 
	{
		s vec = ##class(fbt.Point).vecDif(..vecEnd,..vecStart)
		s vecLen = ##class(fbt.GameGen).vecLen(vec.lat,vec.lon)
		s speed = $R(40)
		s ..speed = speed
		// calc time
		s ..duration = vecLen / speed + 1
	}
Storage Default
{
<Data name="PassDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>startPoint</Value>
</Value>
<Value name="3">
<Value>lt</Value>
</Value>
<Value name="4">
<Value>rb</Value>
</Value>
<Value name="5">
<Value>rt</Value>
</Value>
<Value name="6">
<Value>center</Value>
</Value>
<Value name="7">
<Value>len</Value>
</Value>
<Value name="8">
<Value>widths</Value>
</Value>
<Value name="9">
<Value>vecStart</Value>
</Value>
<Value name="10">
<Value>vecEnd</Value>
</Value>
<Value name="11">
<Value>fromPlayer</Value>
</Value>
<Value name="12">
<Value>toPlayer</Value>
</Value>
<Value name="13">
<Value>startTime</Value>
</Value>
<Value name="14">
<Value>duration</Value>
</Value>
<Value name="15">
<Value>speed</Value>
</Value>
<Value name="16">
<Value>match</Value>
</Value>
<Value name="17">
<Value>Scored</Value>
</Value>
<Value name="18">
<Value>inField</Value>
</Value>
<Value name="19">
<Value>sector</Value>
</Value>
</Data>
<DataLocation>^fbt.PassD</DataLocation>
<DefaultData>PassDefaultData</DefaultData>
<IdLocation>^fbt.PassD</IdLocation>
<IndexLocation>^fbt.PassI</IndexLocation>
<StreamLocation>^fbt.PassS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
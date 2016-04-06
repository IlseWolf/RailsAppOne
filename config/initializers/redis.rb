if Rails.env.production?
	$redis = Redis.new(url: ENV["redis://h:p508oot3gv0tdv8sc52tmmhug6@ec2-54-235-163-223.compute-1.amazonaws.com:10499"])
else
	$redis = Redis.new(:host => 'localhost', :port => 6379)
end
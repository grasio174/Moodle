<?php
$redis = new Redis();
$redis->connect('10.250.85.107', 6379);
if ($redis->ping()) {
    echo "Redis is working!";
} else {
    echo "Redis connection failed!";
}
?>
sub init()
    ? "splash_screen"
	m.splash_video = m.top.findNode("splash_video")
	playSplashAnimation()
end sub

sub playSplashAnimation()
	splash_content = CreateObject("roSGNode", "ContentNode")
	splash_content.url = "http://192.168.43.99:8080/videos/splash-video.mp4"
	splash_content.streamformat = "mp4"
	m.splash_video.content = splash_content
	m.splash_video.control ="prebuffer"
	m.splash_video.visible = true
	m.splash_video.setFocus(true)
	m.splash_video.control = "play"
end sub
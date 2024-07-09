sub init()
    ? "wishlist_screen"
	m.wishlist_video = m.top.findNode("wishlist_video")
	playWishlistAnimation()
    m.title = m.top.findNode("wishlist_title")
    m.top.observeField("wishlist_finished", "focusWishlist")
end sub

sub playWishlistAnimation()
	wishlist_content = CreateObject("roSGNode", "ContentNode")
	wishlist_content.url = "http://192.168.43.99:8080/videos/splash-video.mp4"
	wishlist_content.streamformat = "mp4"
	m.wishlist_video.content = wishlist_content
	m.wishlist_video.control ="prebuffer"
	m.wishlist_video.visible = true
	m.wishlist_video.setFocus(true)
	m.wishlist_video.control = "play"
end sub

sub focusWishlist(obj)
    if m.top.getField("wishlist_finished") = "finished" then
        m.wishlist_video.visible = false
        m.title.setFocus(true)
    end if
end sub
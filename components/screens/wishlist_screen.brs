sub init()
    ? "wishlist_screen"
	m.wishlist_video = m.top.findNode("wishlist_video")
	m.titlze = m.top.findNode("wishlist_title")
    m.top.observeField("wishlist_finished", "focusWishlist")
	m.top.observeField("visible", "onVisibleChange")
end sub

sub onVisibleChange()
  ? "visibleChange"
  if m.top.visible = true then
	playWishlistAnimation()
  end if
    ' focusWishlist()
end sub


sub playWishlistAnimation()
	wishlist_content = CreateObject("roSGNode", "ContentNode")
	wishlist_content.url = "http://192.168.43.99:8080/videos/wishlist-video.mp4"
	wishlist_content.streamformat = "mp4"
	m.wishlist_video.content = wishlist_content
	m.wishlist_video.control ="prebuffer"
	m.wishlist_video.visible = true
	m.wishlist_video.setFocus(true)
	m.wishlist_video.control = "play"
	? wishlist_video.state
end sub

' sub focusWishlist()
' 	if wishlist_video.state = "finished" then
'     	m.wishlist_video.visible = false
'     	m.title.setFocus(true)
' 	end if
' end sub
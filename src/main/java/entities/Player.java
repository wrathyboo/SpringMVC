package entities;

public class Player {
    private String steamid;
    private Integer communityvisibilitystate;
    private Integer profilestate;
    private String personaname;
    private Integer commentpermission;
    private String profileurl;
    private String avatar;
    private String avatarmedium;
    private String avatarfull;
    private String avatarhash;
    private Integer lastlogoff;
    private Integer personastate;
    private String realname;
    private String primaryclanid;
    private Integer timecreated;
    private Integer personastateflags;
    private String loccountrycode;
    private String locstatecode;
    
	public Player() {
		// TODO Auto-generated constructor stub
	}

	public Player(String steamid, Integer communityvisibilitystate, Integer profilestate, String personaname,
			Integer commentpermission, String profileurl, String avatar, String avatarmedium, String avatarfull,
			String avatarhash, Integer lastlogoff, Integer personastate, String realname, String primaryclanid,
			Integer timecreated, Integer personastateflags, String loccountrycode, String locstatecode) {
		super();
		this.steamid = steamid;
		this.communityvisibilitystate = communityvisibilitystate;
		this.profilestate = profilestate;
		this.personaname = personaname;
		this.commentpermission = commentpermission;
		this.profileurl = profileurl;
		this.avatar = avatar;
		this.avatarmedium = avatarmedium;
		this.avatarfull = avatarfull;
		this.avatarhash = avatarhash;
		this.lastlogoff = lastlogoff;
		this.personastate = personastate;
		this.realname = realname;
		this.primaryclanid = primaryclanid;
		this.timecreated = timecreated;
		this.personastateflags = personastateflags;
		this.loccountrycode = loccountrycode;
		this.locstatecode = locstatecode;
	}

	public String getSteamid() {
		return steamid;
	}

	public void setSteamid(String steamid) {
		this.steamid = steamid;
	}

	public Integer getCommunityvisibilitystate() {
		return communityvisibilitystate;
	}

	public void setCommunityvisibilitystate(Integer communityvisibilitystate) {
		this.communityvisibilitystate = communityvisibilitystate;
	}

	public Integer getProfilestate() {
		return profilestate;
	}

	public void setProfilestate(Integer profilestate) {
		this.profilestate = profilestate;
	}

	public String getPersonaname() {
		return personaname;
	}

	public void setPersonaname(String personaname) {
		this.personaname = personaname;
	}

	public Integer getCommentpermission() {
		return commentpermission;
	}

	public void setCommentpermission(Integer commentpermission) {
		this.commentpermission = commentpermission;
	}

	public String getProfileurl() {
		return profileurl;
	}

	public void setProfileurl(String profileurl) {
		this.profileurl = profileurl;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAvatarmedium() {
		return avatarmedium;
	}

	public void setAvatarmedium(String avatarmedium) {
		this.avatarmedium = avatarmedium;
	}

	public String getAvatarfull() {
		return avatarfull;
	}

	public void setAvatarfull(String avatarfull) {
		this.avatarfull = avatarfull;
	}

	public String getAvatarhash() {
		return avatarhash;
	}

	public void setAvatarhash(String avatarhash) {
		this.avatarhash = avatarhash;
	}

	public Integer getLastlogoff() {
		return lastlogoff;
	}

	public void setLastlogoff(Integer lastlogoff) {
		this.lastlogoff = lastlogoff;
	}

	public Integer getPersonastate() {
		return personastate;
	}

	public void setPersonastate(Integer personastate) {
		this.personastate = personastate;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getPrimaryclanid() {
		return primaryclanid;
	}

	public void setPrimaryclanid(String primaryclanid) {
		this.primaryclanid = primaryclanid;
	}

	public Integer getTimecreated() {
		return timecreated;
	}

	public void setTimecreated(Integer timecreated) {
		this.timecreated = timecreated;
	}

	public Integer getPersonastateflags() {
		return personastateflags;
	}

	public void setPersonastateflags(Integer personastateflags) {
		this.personastateflags = personastateflags;
	}

	public String getLoccountrycode() {
		return loccountrycode;
	}

	public void setLoccountrycode(String loccountrycode) {
		this.loccountrycode = loccountrycode;
	}

	public String getLocstatecode() {
		return locstatecode;
	}

	public void setLocstatecode(String locstatecode) {
		this.locstatecode = locstatecode;
	}
    
}

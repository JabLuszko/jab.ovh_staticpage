set -e

SSH_PUBLIC_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDHZO+os6OfUErewABmqJ/sYUb0/upbMCHiVtemRxSMR7r3X68JkXldd1f3x+GHtdUPTFac4NRZrfolp3stUzvingxrHlBQKHwyDCZjJOP/AHLR1h7LmfZCKGoA7KmSPhW6U2pO9yOT/HTQpRA9xQui4F4177tnInEbfDB2rjxkwcwVdkTlEqqm99ALSBMWCEvsAvbzAly3P18Woh/PxJvVWcGgwR+QaTsDQNHZsDus+yvPLhaDDx2OrQGFe2ZYPOQqi9HU3juAGe2At5XCj4X/Zw3aZ1QH42//AqGmL3UyqO0BIUd1zC+Rid5NSd91avwS3cgkqK+3OUuMk7pd4YeBpOm75vZ72Wv3Fw/atB/vtXrCTDWrmtIpwOTjIV6+ctriawxNBWyItZntBvkDcnAYbR8Pv/X6Af9PadgINUSzDRgG9ca110HkpII3PiCT8XDZ/J7rlWqSoWu5qb6p0B0O2abeJeg4mtEGiIltSvZMFdIIJVc3eZn2g5SINM3CMLHUTvYpZa9XEr8Rrkb5oAcZCsBlbATCNmeJ1BXLu1Y23GzeXmJwsPqU4ApuVbUjrgW60U/0oCrCUJOV28lLGzaXjqbIxHAyVbRa5nRorQmeMk+//WKF9Cz+G3uc8mtMrUc94FxtkVPBlrNL5blGCmINQS4tfemcnu+ogsgNhNqf4Q== jabluszko@github/63898765 # ssh-import-id gh:jabluszko"

# Logging function
log() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

# Start logging
log "Starting at $(hostname) on $(date)"

# Add SSH public key to root's authorized_keys
log "Adding SSH public key to ~/.ssh/authorized_keys..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo "$SSH_PUBLIC_KEY" >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
log "SSH key added and permissions set."
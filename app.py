import subprocess
import time


base_link = "https://avsee.tv/bbs/board.php?bo_table=korea&page="
page_cnt = 1

# 1, 354
for cnt in range(41, 50):
    link = base_link+str(cnt)
    p1 = subprocess.Popen(["wget", link, "-P", "pages"], stdout=subprocess.PIPE)
    stdout,stderr = p1.communicate()
    time.sleep(3)
    


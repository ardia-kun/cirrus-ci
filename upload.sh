if [ -f ~/rom/out/target/product/X00TD/lineage-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00TD/ && ls lineage-*.zip)"
      rclone copy ~/rom/out/target/product/X00TD/lineage-*.zip Gdrive:lineage -P
      rclone copy ~/rom/out/target/product/X00TD/boot.img Gdrive:lineage -P
####      rclone copy ~/rom/out/build_date.txt Gdrive:lineage -P ####
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00TD/ && ls lineage-*.zip) Uploaded Successfully!"
fi

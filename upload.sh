if [ -f ~/rom/out/target/product/X00TD/lineage-rev-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00TD/ && ls lineage-rev-*.zip)"
      rclone copy ~/rom/out/target/product/X00TD/lineage-rev-*.zip Gdrive:lineage -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00TD/ && ls lineage-rev-*.zip) Uploaded Successfully!"
fi

if [ -f ~/rom/out/target/product/X00T/qassa*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00T/ && ls qassa*.zip)"
      rclone copy ~/rom/out/target/product/X00T/qassa*.zip Gdrive:qassa -P
      rclone copy ~/rom/out/target/product/X00T/boot.img Gdrive:qassa -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00T/ && ls qassa*.zip) Uploaded Successfully!"
fi

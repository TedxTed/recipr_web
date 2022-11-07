import { Controller } from "stimulus";
import Rails from "@rails/ujs";

export default class extends Controller {
  connect() {
    console.log("like_connect");
    let likeEle = document.querySelectorAll(".like");
    Rails.ajax({
      url: `/count`,
      type: "get",
      success: () => {
        console.log(likeEle);
        likeEle.forEach((ele) => {
          ele.innerText = "請求成功";
        });
      },
    });
  }
}

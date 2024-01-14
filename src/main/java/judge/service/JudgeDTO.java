package judge.service;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JudgeDTO {

    @JsonProperty("judge_user_id")
    private String judgeUserId;

    @JsonProperty("judge_video_id")
    private String judgeVideoId;

    @JsonProperty("score_judgeHeap")
    private String scoreJudgeHeap;

    @JsonProperty("score_judgeIndividuality")
    private String scoreJudgeIndividuality;

    @JsonProperty("score_judgeCuteness")
    private String scoreJudgeCuteness;

}

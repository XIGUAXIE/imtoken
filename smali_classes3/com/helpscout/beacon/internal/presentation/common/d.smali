.class public final Lcom/helpscout/beacon/internal/presentation/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

.field private final b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 100

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "datastore"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    new-instance v1, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const/16 v96, -0x1

    const/16 v97, -0x1

    const v98, 0x7ffffff

    const/16 v99, 0x0

    invoke-direct/range {v4 .. v99}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-interface/range {p2 .. p2}, Lcom/helpscout/beacon/BeaconDatastore;->getConfigWithOverrides()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getLabels()Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;)V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    move-object p1, p3

    goto :goto_3

    :cond_4
    move-object p1, p2

    :cond_5
    :goto_3
    return-object p1
.end method

.method private final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/d;->l()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEndUnassignedCalloutMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_chat_description_unassigned:I

    const-string v2, "It looks like nobody made it to your chat. We\\\'ll send you an email response as soon as possible."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_open_activity_not_found:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_open_activity_not_found)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final B()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEndUnassignedCalloutHeading()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_chat_unassigned_header:I

    const-string v2, "Sorry about that"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getNoTimeToWaitAround()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_no_time_to_wait_around:I

    const-string v2, "No time to wait around? We usually respond within a few hours"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatHeadingSublabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_nothing_found:I

    const-string v2, "We\u2019ll be with you soon"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getNothingFound()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_nothing_found:I

    const-string v2, "Hmm\u2026"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatHeadingTitle()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_heading:I

    const-string v2, "Chat with our team"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_open_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026eacon_error_open_unknown)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_max_attachments_reached:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_max_attachments_reached)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final E0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getPreviousMessages()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_previous_messages:I

    const-string v2, "Previous messages"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_message_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026acon_chat_message_failed)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final F0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_notification_mark_as_read_action_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ark_as_read_action_label)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatRatingButton()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_button:I

    const-string v2, "Submit"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_notification_reply_action_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ation_reply_action_label)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatRatingCommentsPlaceholder()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_comments_placeholder:I

    const-string v2, "Any additional feedback?"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final H0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_notification_agent_replied_default_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026nt_replied_default_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_button_skip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_chat_rating_button_skip)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final I0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_notification_default_agent_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ation_default_agent_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEndCalloutLink()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_call_out_link:I

    const-string v2, "Return home"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_notification_inactivity_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ication_inactivity_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_view_conversation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026n_chat_view_conversation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final K0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_notification_channel_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_notification_channel_id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotConfirmationMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_confirm_message:I

    const-string v2, "Thanks! Someone from our team will jump into the chat soon."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_notification_channel_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_notification_channel_id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotGenericErrorMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_generic_error:I

    const-string v2, "Something went wrong sending your message, please try again in a few minutes."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final M0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_conversation_notification_default_agent_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ation_default_agent_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotGreet()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_greet:I

    const-string v2, "Hi there! You can begin by asking your question below. Someone will be with you shortly."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final N0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_conversation_notification_default_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026tification_default_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotInactivityPrompt()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_inactivity_prompt:I

    const-string v2, "Since the chat has gone idle, I\'ll end this chat in a few minutes."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_notification_channel_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_notification_channel_id)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_name:I

    const-string v2, "Help Bot"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026otification_channel_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotPromptEmail()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_email_prompt:I

    const-string v2, "Got it. Real quick, what\u2019s your email address? We\u2019ll use it for any follow-up messages."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_notification_default_users_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ation_default_users_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final R()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_config:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026g.hs_beacon_error_config)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final R0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getReceived()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_received:I

    const-string v2, "Received. "

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_config_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026eacon_error_config_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final S0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getRelatedArticles()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_related_articles:I

    const-string v2, "Related Articles"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_confirm_email_address_to_view_conversations:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ss_to_view_conversations)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final T0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_reply_sent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.hs_beacon_reply_sent)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final U()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getContinueEditing()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_continue_writing:I

    const-string v2, "Continue writing\u2026"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getResponseTime()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_respond_within_hours:I

    const-string v2, "We usually respond in a few hours"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_continue_to:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ng.hs_beacon_continue_to)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final V0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getSearchLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_search:I

    const-string v2, "Search"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_conversation_show_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026n_conversation_show_more)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final W0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getSendAMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_send_a_message_title:I

    const-string v2, "Send a message"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_customfield_dropdown_leave_blank:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026eld_dropdown_leave_blank)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final X0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getSubjectLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_subject:I

    const-string v2, "Subject"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_customfield_select_option:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ustomfield_select_option)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final Y0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getTryAgain()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_try_again:I

    const-string v2, "Try again"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_discard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.hs_beacon_discard)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final Z0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getTryBroaderTerm()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_article_search_empty_try_broader_term:I

    const-string v2, "Try searching a broader term, or"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAddReply()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_reply:I

    const-string v2, "Add a reply"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_error_downloading_attachment:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026ing_attachment, filename)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_timeout:I

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    sget p1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_network:I

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lretrofit2/HttpException;

    if-eqz p1, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_server:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_unknown:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(\n   \u2026r_unknown\n        }\n    )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;)V
    .locals 1

    const-string v0, "labels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    return-void
.end method

.method public final a0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getDocsArticleErrorText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_article:I

    const-string v2, "There was a problem retrieving this article. Please double-check your internet connection and try again."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getViewAndUpdateMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_view_and_update:I

    const-string v2, "You can view and update your message in"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAddYourMessageHere()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_add_your_message_here:I

    const-string v2, "Add your message here..."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_attachment_downloading_please_wait:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026ng_please_wait, filename)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_article_not_found_go_back:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026rticle_not_found_go_back)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getWaitingForAnAnswer()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_waiting_answer:I

    const-string v2, "Waiting for an answer"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAnswer()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_answers:I

    const-string v2, "Answers"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "filename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_error_uploading_attachment:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026ing_attachment, filename)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_article_not_found:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_error_article_not_found)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getWeAreOnIt()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_we_are_on_it:I

    const-string v2, "We\'re on it!"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_article_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026rror_article_error_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "ext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_attachment_invalid_extension_error:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026lid_extension_error, ext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getDocsSearchEmptyText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_nothing_found:I

    const-string v2, "We couldn\'t find any articles that match your search."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getWereHereToHelp()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_were_here_to_help:I

    const-string v2, "Start a conversation"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAsk()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_ask:I

    const-string v2, "Ask"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatConnected()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_connected:I

    const-string v2, "Connected to {{ name }}"

    invoke-static {v2, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getDocsSearchErrorText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_article_search:I

    const-string v2, "There was a problem retrieving articles. Please double-check your internet connection and try again."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getWhatMethodWorks()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_what_method_works:I

    const-string v2, "What channel do you prefer?"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAttachAFile()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_add_attachment:I

    const-string v2, "Attach a file"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEnded()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_ended:I

    const-string v2, "{{ name }} ended the chat"

    invoke-static {v2, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEmailLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_email_address:I

    const-string v2, "Email address"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f1()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getYou()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_you:I

    const-string v2, "You"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAttachmentErrorText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_sorry_attachment_failed:I

    const-string v2, "There was a problem uploading your attachment. Please try again in a moment."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatRatingLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_rating_label:I

    const-string v2, "How was your chat with {{ name }}?"

    invoke-static {v2, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEmailValidationLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_email_not_valid:I

    const-string v2, "Please use a valid email address"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getAttachmentSizeErrorText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_error_attachment_too_large:I

    const-string v2, "Attachments may be no larger than 10MB"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatbotAgentDisconnectedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_bot_agent_disconnected_message:I

    const-string v2, "{{ name }} has disconnected from the chat. It\u2019s possible they lost their internet connection, so I\u2019m looking for someone else to take over. Sorry for the delay!"

    invoke-static {v2, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/StringExtensionsKt;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEndChat()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end:I

    const-string v2, "End chat"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getBeaconButtonChatMinimize()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_minimize:I

    const-string v2, "Minimize chat"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_custom_fields_required:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026elds_required, fieldName)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final i0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_error_no_previous_messages_found:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_previous_messages_found)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_error_too_many_files:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026age_error_too_many_files)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "ext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_error_invalid_attachment_extension:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.st\u2026ttachment_extension, ext)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationQuestionFeedback()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_question_feedback:I

    const-string v2, "Did this answer your question?"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getCantFindAnswer()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_cant_find_any_articles:I

    const-string v2, "We couldn\'t find any articles that match your question. Try searching a broader term or Get in Touch"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationSearchText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_search_text:I

    const-string v2, "Browse our help docs for an answer to your question"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_agent_name_if_missing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026at_agent_name_if_missing)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationSearchTitle()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_search_title:I

    const-string v2, "Keep searching"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_download_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026acon_chat_download_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationTalkText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_talk_text:I

    const-string v2, "Talk with a friendly member of our support team"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_downloading_image_attachment_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_image_attachment_failed)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final n0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationTalkTitle()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_talk_title:I

    const-string v2, "Talk to us"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_downloading_image_attachment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026loading_image_attachment)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationThanksFeedback()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_thanks_feedback:I

    const-string v2, "Thanks for the feedback"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_tap_to_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026beacon_chat_tap_to_retry)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final p0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getEscalationWhatNext()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_escalation_whats_next:I

    const-string v2, "What next?"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_attachment_image_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026ttachment_image_download)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final q0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getGetInTouch()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_get_in_touch:I

    const-string v2, "Get in touch"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_attachment_upload_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_attachment_upload_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final r0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getHowCanWeHelp()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_what_help_with:I

    const-string v2, "How can we help?"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatButtonDescription()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_button_description:I

    const-string v2, "Talk to our team in real-time"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getSuggestedForYou()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_suggested_for_you:I

    const-string v2, "Instant Answers"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatButtonLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_button:I

    const-string v2, "Chat"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getJustNow()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_just_now:I

    const-string v2, "Just Now"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_email_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026s_beacon_chat_email_hint)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final u0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getLastUpdated()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_last_updated:I

    const-string v2, "Last updated "

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_chat_dialog_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026t_end_chat_dialog_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final v0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_error_loading_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026eacon_error_loading_more)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEndWaitingCustomerMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_waiting_message:I

    const-string v2, "Your question has been added to our email queue and we\'ll get back to you shortly."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getMessageButtonLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message_button:I

    const-string v2, "Message"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEndCalloutMessage()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_chat_description_success:I

    const-string v2, "A copy of this conversation will land in your inbox shortly"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getMessageConfirmationText()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_estimated_usually_response:I

    const-string v2, "You\'ll receive an email reply within a few hours."

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getChatEndCalloutHeading()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_end_chat_header_success:I

    const-string v2, "All done!"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getMessageLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_message:I

    const-string v2, "How can we help?"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->b:Landroid/content/res/Resources;

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_chat_ended_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.st\u2026_beacon_chat_ended_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final z0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/d;->a:Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/LabelsConfigApi;->getNameLabel()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/helpscout/beacon/ui/R$string;->hs_beacon_name:I

    const-string v2, "Name"

    invoke-direct {p0, v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

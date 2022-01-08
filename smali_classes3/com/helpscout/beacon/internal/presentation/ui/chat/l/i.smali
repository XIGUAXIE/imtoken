.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)I
    .locals 0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_unfurled_media:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_unfurled_media:I

    :goto_0
    return p1
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)I
    .locals 1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;->r()Z

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_attachment_image:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_attachment_generic:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_attachment_image:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_attachment_generic:I

    :goto_0
    return p1
.end method

.method private final a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)I
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find a view type of this event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->d()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)I

    move-result p1

    goto :goto_0

    :cond_2
    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_line:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_message:I

    goto :goto_0

    :cond_4
    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_message:I

    :goto_0
    return p1
.end method

.method public final a(Landroid/view/ViewGroup;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFailToDeliverCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenAttachment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUploadFailsListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTap"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_message:I

    const-string v1, "inflate(viewType, parent)"

    if-ne p2, v0, :cond_0

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_message:I

    if-ne p2, v0, :cond_1

    new-instance p4, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/o;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p4, p1, p3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/o;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    move-object p3, p4

    goto/16 :goto_0

    :cond_1
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_line:I

    if-ne p2, p3, :cond_2

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/r;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/r;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_attachment_image:I

    if-ne p2, p3, :cond_3

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1, p6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_3
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_attachment_generic:I

    if-ne p2, p3, :cond_4

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/m;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_agent_unfurled_media:I

    if-ne p2, p3, :cond_5

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_attachment_image:I

    if-ne p2, p3, :cond_6

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1, p5, p6}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_6
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_attachment_generic:I

    if-ne p2, p3, :cond_7

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v2 .. v8}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/helpscout/beacon/internal/presentation/common/m;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_7
    sget p3, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_chat_item_customer_unfurled_media:I

    if-ne p2, p3, :cond_8

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p3

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported View type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

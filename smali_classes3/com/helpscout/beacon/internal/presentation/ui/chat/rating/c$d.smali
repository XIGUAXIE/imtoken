.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;)Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;
    .locals 3

    const-string v0, "chatActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    sget v1, Lcom/helpscout/beacon/ui/R$id;->chatMotionLayout:I

    invoke-virtual {p1, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivity;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const-string v2, "chatActivity.chatMotionLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-object v0
.end method

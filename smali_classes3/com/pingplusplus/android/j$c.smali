.class public final Lcom/pingplusplus/android/j$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/j;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/j$c;->a:Lcom/pingplusplus/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final showSource(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "html"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const-string v4, "success"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pingplusplus/android/j$c;->a:Lcom/pingplusplus/android/j;

    iput-boolean v5, v3, Lcom/pingplusplus/android/j;->j:Z

    iget-object v3, v3, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    iput-object v4, v3, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    :cond_0
    const-string v3, "\u60a8\u5df2\u8d2d\u4e70\u6210\u529f"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\u672c\u6b21\u6d88\u8d39\u5df2\u8ba1\u5165\u60a8\u7684\u8d26\u5355"

    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/j$c;->a:Lcom/pingplusplus/android/j;

    iput-boolean v5, p1, Lcom/pingplusplus/android/j;->j:Z

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    iput-object v4, p1, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    :cond_2
    return-void
.end method

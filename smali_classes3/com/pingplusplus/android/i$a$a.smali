.class final Lcom/pingplusplus/android/i$a$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/pingplusplus/android/i$b;",
        "Ljava/lang/Void;",
        "Lcom/pingplusplus/android/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/pingplusplus/android/i$b;)Lcom/pingplusplus/android/h;
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object p1, p1, v0

    sget-object v0, Lcom/pingplusplus/android/i;->b:Lcom/pingplusplus/android/i$a;

    invoke-virtual {v0, p1}, Lcom/pingplusplus/android/i$a;->a(Lcom/pingplusplus/android/i$b;)Lcom/pingplusplus/android/h;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/pingplusplus/android/h;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/pingplusplus/android/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/pingplusplus/android/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/pingplusplus/android/h;->c:Lcom/pingplusplus/android/d;

    if-eqz v0, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Lcom/pingplusplus/android/d;->a(Lcom/pingplusplus/android/h;)V

    goto :goto_0

    :cond_1
    const-string p1, "response is null"

    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/pingplusplus/android/i$b;

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/i$a$a;->a([Lcom/pingplusplus/android/i$b;)Lcom/pingplusplus/android/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/pingplusplus/android/h;

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/i$a$a;->a(Lcom/pingplusplus/android/h;)V

    return-void
.end method

.class public final Lcom/unionpay/mobile/android/nocard/views/ao$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/views/order/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/nocard/views/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/ao;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Lcom/unionpay/mobile/android/nocard/views/ao;I)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/nocard/views/ao;I)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v2, v2, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/model/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->l(Ljava/lang/String;)V

    return v1
.end method

.method public final a(IZILcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/nocard/views/ao;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/nocard/views/ao;)Lcom/unionpay/mobile/android/views/order/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/views/order/o;->a()I

    move-result v1

    iput v1, v0, Lcom/unionpay/mobile/android/model/b;->aQ:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "functionEx"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1, p3}, Lcom/unionpay/mobile/android/nocard/views/ao;->c(Lcom/unionpay/mobile/android/nocard/views/ao;I)V

    return-void

    :cond_1
    const-string v0, "0"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "1"

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput p3, p1, Lcom/unionpay/mobile/android/model/b;->N:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iput-boolean v2, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/nocard/views/ao;I)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/model/c;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p2, p2, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v3, p2, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p2, p2, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p2, p2, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    invoke-static {p2, p1, v3, v3}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/model/c;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p2, p2, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p2, p2, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\"pan\":\""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "2"

    const-string p4, "1\",\"carrier_tp\":\"2"

    invoke-static {p2, p1, p3, p4}, Lcom/unionpay/mobile/android/nocard/views/bh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p2, p2, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p3, p3, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p3, p3, Lcom/unionpay/mobile/android/model/b;->j:Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p4}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p2, p4, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object p2, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iput-boolean v2, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/nocard/views/ao;I)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p2, p4, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->m(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iput-boolean v2, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->j:Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->b(Lcom/unionpay/mobile/android/nocard/views/ao;I)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p2, p2, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v0, p1, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->M:Ljava/lang/String;

    iget-object p2, p4, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-static {p1, p2, v3, v3}, Lcom/unionpay/mobile/android/nocard/views/bh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p2, p2, Lcom/unionpay/mobile/android/nocard/views/ao;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p3, p3, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p3, p3, Lcom/unionpay/mobile/android/model/b;->j:Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->f:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const/4 p1, 0x0

    return p1
.end method

.method public final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->q()V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/unionpay/mobile/android/model/b;->aP:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    return-void

    :cond_1
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->e(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    return-void

    :cond_2
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->f(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    return-void

    :cond_3
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v0, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->bp:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ao$a;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object v1, v1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->bq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

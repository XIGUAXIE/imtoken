.class public Lcn/jiguang/aj/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/aj/l;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/aj/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/jiguang/aj/k;


# direct methods
.method public constructor <init>(Lcn/jiguang/aj/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcn/jiguang/aj/g;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/jiguang/g/a;->O()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/jiguang/aj/g;->b(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcn/jiguang/ai/a;->b()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private a(Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)V
    .locals 4

    invoke-static {}, Lcn/jiguang/ai/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcn/jiguang/f/h;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main sis: sis host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sis"

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/aj/g;

    invoke-direct {p0, v1, p1, p2}, Lcn/jiguang/aj/i;->a(Lcn/jiguang/aj/g;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    iget-object v0, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    iget-object v0, v0, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/aj/g;->a(Ljava/lang/String;)Lcn/jiguang/aj/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main sis: last good sis v4 address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcn/jiguang/aj/i;->a(Lcn/jiguang/aj/g;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    iget-object v0, v0, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jiguang/aj/g;->a(Ljava/lang/String;)Lcn/jiguang/aj/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main sis: last good sis v6 address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcn/jiguang/aj/i;->a(Lcn/jiguang/aj/g;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)Z

    return-void
.end method

.method private a(Lcn/jiguang/aj/g;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)Z
    .locals 9

    invoke-virtual {p2}, Lcn/jiguang/aj/p;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcn/jiguang/aj/g;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/jiguang/am/a;->a()Lcn/jiguang/am/a;

    move-result-object v3

    iget-object v2, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    iget-object v4, v2, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    iget-object v5, p1, Lcn/jiguang/aj/g;->a:Ljava/lang/String;

    const-wide/16 v6, 0xbb8

    iget-object v2, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    invoke-virtual {v2}, Lcn/jiguang/aj/k;->a()Z

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcn/jiguang/am/a;->b(Landroid/content/Context;Ljava/lang/String;JZ)[Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/f/h;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {p2}, Lcn/jiguang/aj/p;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    new-instance v4, Lcn/jiguang/aj/g;

    iget v5, p1, Lcn/jiguang/aj/g;->b:I

    invoke-direct {v4, v3, v5}, Lcn/jiguang/aj/g;-><init>(Ljava/net/InetAddress;I)V

    iget-object v3, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3, v4}, Lcn/jiguang/aj/f;->a(Lcn/jiguang/aj/g;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcn/jiguang/aj/o;

    iget-object v2, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    invoke-direct {v1, v2, p2, p3}, Lcn/jiguang/aj/o;-><init>(Lcn/jiguang/aj/k;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)V

    invoke-virtual {p2, v1}, Lcn/jiguang/aj/p;->a(Ljava/util/concurrent/Callable;)V

    :cond_5
    iget-object p2, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return v0
.end method

.method private b(Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)V
    .locals 6

    iget-object v0, p0, Lcn/jiguang/aj/i;->b:Lcn/jiguang/aj/k;

    iget-object v0, v0, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/jiguang/aj/i;->a(Landroid/content/Context;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcn/jiguang/f/h;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "main sis: default sis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sis"

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/aj/g;

    invoke-direct {p0, v3, p1, p2}, Lcn/jiguang/aj/i;->a(Lcn/jiguang/aj/g;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_1
    invoke-static {}, Lcn/jiguang/ak/l;->a()Lcn/jiguang/ak/l;

    move-result-object v1

    invoke-static {}, Lcn/jiguang/ai/a;->c()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Lcn/jiguang/ak/l;->a(Ljava/lang/String;J)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/jiguang/aj/i;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcn/jiguang/f/h;->a(Ljava/util/Collection;)Ljava/util/LinkedList;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main sis: sis srv"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/aj/g;

    invoke-direct {p0, v1, p1, p2}, Lcn/jiguang/aj/i;->a(Lcn/jiguang/aj/g;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    return-void
.end method


# virtual methods
.method public a()Lcn/jiguang/aj/l;
    .locals 8

    new-instance v0, Lcn/jiguang/aj/f;

    invoke-direct {v0}, Lcn/jiguang/aj/f;-><init>()V

    new-instance v1, Lcn/jiguang/aj/p;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x7d0

    const-string/jumbo v5, "ss"

    invoke-direct {v1, v3, v4, v2, v5}, Lcn/jiguang/aj/p;-><init>(IILcn/jiguang/aj/a;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcn/jiguang/aj/i;->a(Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)V

    const-string v3, "Sis"

    const-string v4, "main sis: after host and last good, wait Result"

    invoke-static {v3, v4}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v4, v5}, Lcn/jiguang/aj/p;->a(J)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcn/jiguang/aj/l;

    if-eqz v7, :cond_0

    check-cast v6, Lcn/jiguang/aj/l;

    return-object v6

    :cond_0
    invoke-direct {p0, v1, v0}, Lcn/jiguang/aj/i;->b(Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)V

    const-string v0, "main sis: after default and srv, wait Result"

    invoke-static {v3, v0}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcn/jiguang/aj/p;->a(J)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcn/jiguang/aj/p;->a(Z)V

    instance-of v1, v0, Lcn/jiguang/aj/l;

    if-eqz v1, :cond_1

    check-cast v0, Lcn/jiguang/aj/l;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/jiguang/aj/i;->a()Lcn/jiguang/aj/l;

    move-result-object v0

    return-object v0
.end method

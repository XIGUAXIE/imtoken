.class public Lcn/jiguang/supp/MittIdSupplier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/miitmdid/core/IIdentifierListener;


# instance fields
.field private mittCall:Lcn/jiguang/t/a;


# direct methods
.method public constructor <init>(Lcn/jiguang/t/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/supp/MittIdSupplier;->mittCall:Lcn/jiguang/t/a;

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/supplier/IdSupplier;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/supp/MittIdSupplier;->mittCall:Lcn/jiguang/t/a;

    invoke-virtual {v0, p1, p2}, Lcn/jiguang/t/a;->a(ZLcom/bun/miitmdid/supplier/IdSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    iget-object p1, p0, Lcn/jiguang/supp/MittIdSupplier;->mittCall:Lcn/jiguang/t/a;

    iget-object p1, p1, Lcn/jiguang/t/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method

.class public Lorg/apache/commons/validator/ValidatorResult$ResultStatus;
.super Ljava/lang/Object;
.source "ValidatorResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/validator/ValidatorResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultStatus"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x38933a0dc63d41c7L


# instance fields
.field private result:Ljava/lang/Object;

.field private valid:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/validator/ValidatorResult;ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;-><init>(ZLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->valid:Z

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->result:Ljava/lang/Object;

    .line 150
    iput-boolean p1, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->valid:Z

    .line 151
    iput-object p2, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->valid:Z

    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->result:Ljava/lang/Object;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lorg/apache/commons/validator/ValidatorResult$ResultStatus;->valid:Z

    return-void
.end method

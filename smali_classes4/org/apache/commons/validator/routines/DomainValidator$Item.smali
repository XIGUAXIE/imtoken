.class public Lorg/apache/commons/validator/routines/DomainValidator$Item;
.super Ljava/lang/Object;
.source "DomainValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/validator/routines/DomainValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field final type:Lorg/apache/commons/validator/routines/DomainValidator$ArrayType;

.field final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/commons/validator/routines/DomainValidator$ArrayType;[Ljava/lang/String;)V
    .locals 0

    .line 2087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2088
    iput-object p1, p0, Lorg/apache/commons/validator/routines/DomainValidator$Item;->type:Lorg/apache/commons/validator/routines/DomainValidator$ArrayType;

    .line 2089
    iput-object p2, p0, Lorg/apache/commons/validator/routines/DomainValidator$Item;->values:[Ljava/lang/String;

    return-void
.end method

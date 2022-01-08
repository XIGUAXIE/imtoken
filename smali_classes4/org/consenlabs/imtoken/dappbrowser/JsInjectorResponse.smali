.class Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;
.super Ljava/lang/Object;
.source "JsInjectorResponse.java"


# instance fields
.field final charset:Ljava/lang/String;

.field final data:Ljava/lang/String;

.field final isRedirect:Z

.field final mime:Ljava/lang/String;

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->data:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->url:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->mime:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->charset:Ljava/lang/String;

    .line 15
    iput-boolean p6, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->isRedirect:Z

    return-void
.end method

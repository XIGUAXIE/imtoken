.class Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;
.super Ljava/lang/Object;
.source "ReactTextInputManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/textinput/ReactTextInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReactTextInputTextWatcher"
.end annotation


# instance fields
.field private mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

.field private mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mPreviousText:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/views/textinput/ReactTextInputManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/textinput/ReactEditText;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->this$0:Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    const-class p1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p2, p1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 857
    iput-object p3, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    const/4 p1, 0x0

    .line 858
    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mPreviousText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 864
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mPreviousText:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 869
    iget-object v4, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-boolean v4, v4, Lcom/facebook/react/views/textinput/ReactEditText;->mDisableTextDiffing:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    return-void

    .line 879
    :cond_1
    iget-object v4, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mPreviousText:Ljava/lang/String;

    invoke-static {v4}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    add-int v5, v1, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 881
    iget-object v4, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mPreviousText:Ljava/lang/String;

    add-int v6, v1, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-ne v3, v2, :cond_2

    .line 883
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 888
    :cond_2
    iget-object v3, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-object v3, v3, Lcom/facebook/react/views/textinput/ReactEditText;->mAttributedString:Lcom/facebook/react/bridge/JavaOnlyMap;

    const-string v4, "fragments"

    const/4 v7, 0x0

    const-string/jumbo v10, "string"

    if-eqz v3, :cond_6

    .line 889
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->hasKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v11, p1

    .line 890
    invoke-interface {v11, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-virtual {v3, v10}, Lcom/facebook/react/bridge/JavaOnlyMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 893
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    invoke-virtual {v12, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ""

    if-le v14, v6, :cond_3

    .line 897
    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v6, v15

    :goto_0
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 899
    invoke-virtual {v3, v10, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    check-cast v6, Lcom/facebook/react/bridge/JavaOnlyArray;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 905
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/react/bridge/JavaOnlyArray;->size()I

    move-result v7

    if-ge v12, v7, :cond_6

    if-nez v13, :cond_6

    .line 906
    invoke-virtual {v6, v12}, Lcom/facebook/react/bridge/JavaOnlyArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/bridge/JavaOnlyMap;

    move-object/from16 v16, v6

    .line 907
    invoke-virtual {v7, v10}, Lcom/facebook/react/bridge/JavaOnlyMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 909
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v14, v17

    if-ge v11, v1, :cond_4

    move-object/from16 v18, v9

    move/from16 p2, v11

    move-object/from16 v17, v15

    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    sub-int v13, v1, v14

    .line 923
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v13

    move/from16 p2, v11

    .line 925
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 926
    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v13, v9

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 929
    invoke-virtual {v7, v10, v6}, Lcom/facebook/react/bridge/JavaOnlyMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v14, v2, :cond_5

    add-int/2addr v1, v14

    sub-int/2addr v2, v14

    move-object/from16 v5, v17

    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    const/4 v13, 0x1

    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, p1

    move/from16 v14, p2

    move-object/from16 v6, v16

    move-object/from16 v15, v17

    move-object/from16 v9, v18

    goto :goto_1

    :cond_6
    move-object/from16 v18, v9

    const/4 v15, 0x0

    .line 950
    iget-object v5, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-object v5, v5, Lcom/facebook/react/views/textinput/ReactEditText;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 951
    new-instance v5, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v5}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 952
    new-instance v6, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v6}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 954
    new-instance v7, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v7}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 956
    :goto_3
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v9

    invoke-interface {v9}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v9

    if-ge v15, v9, :cond_7

    .line 957
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/JavaOnlyMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v9

    invoke-interface {v9, v15}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v9

    .line 958
    new-instance v11, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v11}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    const-string/jumbo v12, "reactTag"

    .line 959
    invoke-interface {v9, v12}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v13

    int-to-double v13, v13

    invoke-interface {v11, v12, v13, v14}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 960
    invoke-interface {v9, v10}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v10, v9}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-interface {v7, v11}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 964
    :cond_7
    invoke-virtual {v3, v10}, Lcom/facebook/react/bridge/JavaOnlyMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v10, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-interface {v6, v4, v7}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 967
    iget-object v3, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v3}, Lcom/facebook/react/views/textinput/ReactEditText;->incrementAndGetEventCounter()I

    move-result v3

    const-string v4, "mostRecentEventCount"

    invoke-interface {v5, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "textChanged"

    .line 968
    invoke-interface {v5, v3, v6}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 970
    iget-object v3, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    iget-object v3, v3, Lcom/facebook/react/views/textinput/ReactEditText;->mStateWrapper:Lcom/facebook/react/uimanager/StateWrapper;

    invoke-interface {v3, v5}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    .line 975
    :cond_8
    iget-object v3, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v4, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;

    iget-object v5, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 977
    invoke-virtual {v5}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    invoke-virtual {v7}, Lcom/facebook/react/views/textinput/ReactEditText;->incrementAndGetEventCounter()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/react/views/textinput/ReactTextChangedEvent;-><init>(ILjava/lang/String;I)V

    .line 975
    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 979
    iget-object v3, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v4, Lcom/facebook/react/views/textinput/ReactTextInputEvent;

    iget-object v5, v0, Lcom/facebook/react/views/textinput/ReactTextInputManager$ReactTextInputTextWatcher;->mEditText:Lcom/facebook/react/views/textinput/ReactEditText;

    .line 980
    invoke-virtual {v5}, Lcom/facebook/react/views/textinput/ReactEditText;->getId()I

    move-result v7

    add-int v11, v1, v2

    move-object v6, v4

    move-object/from16 v9, v18

    move v10, v1

    invoke-direct/range {v6 .. v11}, Lcom/facebook/react/views/textinput/ReactTextInputEvent;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 979
    invoke-virtual {v3, v4}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.class Landroid/widget/Editor$TextDisplayList;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDisplayList"
.end annotation


# instance fields
.field displayList:Landroid/view/RenderNode;

.field isDirty:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$TextDisplayList;->isDirty:Z

    .line 149
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$TextDisplayList;->displayList:Landroid/view/RenderNode;

    .line 150
    return-void
.end method


# virtual methods
.method needsRecord()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/widget/Editor$TextDisplayList;->isDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$TextDisplayList;->displayList:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

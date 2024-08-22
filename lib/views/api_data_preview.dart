import 'package:app_bar/api/api_services.dart';
import 'package:flutter/material.dart';

class ApiDataPreview extends StatefulWidget {
  const ApiDataPreview({super.key});

  @override
  State<ApiDataPreview> createState() => _ApiDataPreviewState();
}

ApiServices api = ApiServices();

class _ApiDataPreviewState extends State<ApiDataPreview> {
  Future<List<dynamic>>? postDetails;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postDetails = api.getPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CommentApiPreview(),
              ));
        },
        backgroundColor: Colors.indigoAccent.shade700,
        child: const Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text('Post Details'),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: postDetails,
            builder: (context, snapshot) {
              return Expanded(
                child: ListView.separated(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    var post = snapshot.data![index];
                    return ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      tileColor: Colors.indigo.shade50,
                      leading: CircleAvatar(
                        child: Text(post['id'].toString()),
                      ),
                      title: Text(
                        post['title'],
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(post['body']),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Colors.indigo.shade400,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class CommentApiPreview extends StatefulWidget {
  const CommentApiPreview({super.key});

  @override
  State<CommentApiPreview> createState() => _CommentApiPreviewState();
}

class _CommentApiPreviewState extends State<CommentApiPreview> {
  Future<List<dynamic>>? commentDetails;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    commentDetails = api.getComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigoAccent.shade700,
        child: const Icon(
          Icons.arrow_forward_outlined,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const Text('Post Details'),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: commentDetails,
            builder: (context, snapshot) {
              return Expanded(
                child: ListView.separated(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    var comment = snapshot.data![index];
                    return ExpansionTile(
                      initiallyExpanded: false,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      collapsedBackgroundColor: Colors.indigo.shade50,
                      leading: CircleAvatar(
                        child: Text(comment['id'].toString()),
                      ),
                      title: Text(
                        comment['name'],
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Text(comment['email']),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Colors.indigo.shade400,
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
